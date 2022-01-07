
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int accmode_t ;


 int EPERM ;
 int VADMIN ;
 int VADMIN_PERMS ;
 int VDELETE ;
 int VDELETE_CHILD ;
 int VEXPLICIT_DENY ;
 int VSTAT_PERMS ;
 int VSYNCHRONIZE ;

int
vfs_unixify_accmode(accmode_t *accmode)
{




 if (*accmode & VEXPLICIT_DENY) {
  *accmode = 0;
  return (0);
 }







 if (*accmode & (VDELETE_CHILD | VDELETE))
  return (EPERM);

 if (*accmode & VADMIN_PERMS) {
  *accmode &= ~VADMIN_PERMS;
  *accmode |= VADMIN;
 }





 *accmode &= ~(VSTAT_PERMS | VSYNCHRONIZE);

 return (0);
}
