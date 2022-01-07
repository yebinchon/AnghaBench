
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_fsk {int dummy; } ;
struct TYPE_2__ {int fshash; } ;


 int DNHT_REMOVE ;
 int DN_BH_WLOCK () ;
 int DN_BH_WUNLOCK () ;
 int DN_DELETE_FS ;
 int DN_DETACH ;
 int EINVAL ;
 int ND (char*,int,struct dn_fsk*) ;
 TYPE_1__ dn_cfg ;
 struct dn_fsk* dn_ht_find (int ,int,int ,int *) ;
 int fsk_detach (struct dn_fsk*,int) ;

__attribute__((used)) static int
delete_fs(int i, int locked)
{
 struct dn_fsk *fs;
 int err = 0;

 if (!locked)
  DN_BH_WLOCK();
 fs = dn_ht_find(dn_cfg.fshash, i, DNHT_REMOVE, ((void*)0));
 ND("fs %d found %p", i, fs);
 if (fs) {
  fsk_detach(fs, DN_DETACH | DN_DELETE_FS);
  err = 0;
 } else
  err = EINVAL;
 if (!locked)
  DN_BH_WUNLOCK();
 return err;
}
