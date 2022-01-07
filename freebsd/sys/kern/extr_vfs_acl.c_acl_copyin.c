
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oldacl {int acl_maxcnt; } ;
struct acl {int acl_maxcnt; } ;
typedef int old ;
typedef int acl_type_t ;


 int ACL_MAX_ENTRIES ;


 int EINVAL ;
 int acl_copy_oldacl_into_acl (struct oldacl*,struct oldacl*) ;
 int copyin (void const*,struct oldacl*,int) ;

__attribute__((used)) static int
acl_copyin(const void *user_acl, struct acl *kernel_acl, acl_type_t type)
{
 int error;
 struct oldacl old;

 switch (type) {
 case 129:
 case 128:
  error = copyin(user_acl, &old, sizeof(old));
  if (error != 0)
   break;
  acl_copy_oldacl_into_acl(&old, kernel_acl);
  break;

 default:
  error = copyin(user_acl, kernel_acl, sizeof(*kernel_acl));
  if (kernel_acl->acl_maxcnt != ACL_MAX_ENTRIES)
   return (EINVAL);
 }

 return (error);
}
