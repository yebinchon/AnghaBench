
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acl {int dummy; } ;
typedef int mode_t ;


 int ACL_OVERRIDE_MASK ;
 int ACL_PRESERVE_MASK ;
 int acl_posix1e_acl_to_mode (struct acl*) ;

mode_t
acl_posix1e_newfilemode(mode_t cmode, struct acl *dacl)
{
 mode_t mode;

 mode = cmode;






 mode &= ACL_PRESERVE_MASK;
 mode |= (ACL_OVERRIDE_MASK & cmode & acl_posix1e_acl_to_mode(dacl));

 return (mode);
}
