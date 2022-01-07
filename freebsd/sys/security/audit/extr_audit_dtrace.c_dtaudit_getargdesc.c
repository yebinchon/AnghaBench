
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct evname_elem {int ene_bsm_probe_id; } ;
typedef int dtrace_id_t ;
struct TYPE_3__ {int dtargd_ndx; int dtargd_native; } ;
typedef TYPE_1__ dtrace_argdesc_t ;


 void* DTRACE_ARGNONE ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
dtaudit_getargdesc(void *arg, dtrace_id_t id, void *parg,
    dtrace_argdesc_t *desc)
{
 struct evname_elem *ene;
 const char *p;

 ene = (struct evname_elem *)parg;
 p = ((void*)0);
 switch (desc->dtargd_ndx) {
 case 0:

  p = "char *";
  break;

 case 1:

  p = "struct audit_record *";
  break;

 case 2:

  if (id == ene->ene_bsm_probe_id)
   p = "const void *";
  else
   desc->dtargd_ndx = DTRACE_ARGNONE;
  break;

 case 3:

  if (id == ene->ene_bsm_probe_id)
   p = "size_t";
  else
   desc->dtargd_ndx = DTRACE_ARGNONE;
  break;

 default:
  desc->dtargd_ndx = DTRACE_ARGNONE;
  break;
 }
 if (p != ((void*)0))
  strlcpy(desc->dtargd_native, p, sizeof(desc->dtargd_native));
}
