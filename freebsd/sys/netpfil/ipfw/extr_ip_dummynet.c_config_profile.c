
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dn_schk {TYPE_3__* profile; } ;
struct TYPE_7__ {int len; } ;
struct dn_profile {int link_nr; scalar_t__ samples_no; TYPE_1__ oid; } ;
struct dn_id {int dummy; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_8__ {int len; } ;
struct TYPE_9__ {TYPE_2__ oid; } ;


 int D (char*,int) ;
 int DN_BH_WLOCK () ;
 int DN_BH_WUNLOCK () ;
 int DN_MAX_ID ;
 int EINVAL ;
 int ENOMEM ;
 int M_DUMMYNET ;
 int M_NOWAIT ;
 int M_ZERO ;
 TYPE_6__ dn_cfg ;
 int free (TYPE_3__*,int ) ;
 struct dn_schk* locate_scheduler (int) ;
 TYPE_3__* malloc (int,int ,int) ;
 int memcpy (TYPE_3__*,struct dn_profile*,int) ;

__attribute__((used)) static int
config_profile(struct dn_profile *pf, struct dn_id *arg)
{
 struct dn_schk *s;
 int i, olen, err = 0;

 if (pf->oid.len < sizeof(*pf)) {
  D("short profile len %d", pf->oid.len);
  return EINVAL;
 }
 i = pf->link_nr;
 if (i <= 0 || i >= DN_MAX_ID)
  return EINVAL;

 DN_BH_WLOCK();
 for (; i < 2*DN_MAX_ID; i += DN_MAX_ID) {
  s = locate_scheduler(i);

  if (s == ((void*)0)) {
   err = EINVAL;
   break;
  }
  dn_cfg.id++;




  if (s->profile && (pf->samples_no == 0 ||
      s->profile->oid.len < pf->oid.len)) {
   free(s->profile, M_DUMMYNET);
   s->profile = ((void*)0);
  }
  if (pf->samples_no == 0)
   continue;




  if (s->profile == ((void*)0))
   s->profile = malloc(pf->oid.len,
        M_DUMMYNET, M_NOWAIT | M_ZERO);
  if (s->profile == ((void*)0)) {
   D("no memory for profile %d", i);
   err = ENOMEM;
   break;
  }

  olen = s->profile->oid.len;
  if (olen < pf->oid.len)
   olen = pf->oid.len;
  memcpy(s->profile, pf, pf->oid.len);
  s->profile->oid.len = olen;
 }
 DN_BH_WUNLOCK();
 return err;
}
