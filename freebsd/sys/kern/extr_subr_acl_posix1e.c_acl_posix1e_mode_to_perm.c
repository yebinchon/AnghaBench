
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int acl_tag_t ;
typedef int acl_perm_t ;


 int ACL_EXECUTE ;


 int ACL_READ ;

 int ACL_WRITE ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int printf (char*,int) ;

acl_perm_t
acl_posix1e_mode_to_perm(acl_tag_t tag, mode_t mode)
{
 acl_perm_t perm = 0;

 switch(tag) {
 case 128:
  if (mode & S_IXUSR)
   perm |= ACL_EXECUTE;
  if (mode & S_IRUSR)
   perm |= ACL_READ;
  if (mode & S_IWUSR)
   perm |= ACL_WRITE;
  return (perm);

 case 130:
  if (mode & S_IXGRP)
   perm |= ACL_EXECUTE;
  if (mode & S_IRGRP)
   perm |= ACL_READ;
  if (mode & S_IWGRP)
   perm |= ACL_WRITE;
  return (perm);

 case 129:
  if (mode & S_IXOTH)
   perm |= ACL_EXECUTE;
  if (mode & S_IROTH)
   perm |= ACL_READ;
  if (mode & S_IWOTH)
   perm |= ACL_WRITE;
  return (perm);

 default:
  printf("acl_posix1e_mode_to_perm: invalid tag (%d)\n", tag);
  return (0);
 }
}
