
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT4_XATTR_INDEX_POSIX_ACL_ACCESS ;
 int EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT ;
 int EXT4_XATTR_INDEX_SYSTEM ;
 int EXT4_XATTR_INDEX_USER ;


 int POSIX1E_ACL_ACCESS_EXTATTR_NAME ;
 int POSIX1E_ACL_ACCESS_EXTATTR_NAMESPACE ;
 int POSIX1E_ACL_DEFAULT_EXTATTR_NAME ;
 int POSIX1E_ACL_DEFAULT_EXTATTR_NAMESPACE ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int
ext2_extattr_attrnamespace_to_linux(int attrnamespace, const char *name)
{

 if (attrnamespace == POSIX1E_ACL_DEFAULT_EXTATTR_NAMESPACE &&
     !strcmp(name, POSIX1E_ACL_DEFAULT_EXTATTR_NAME))
  return (EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT);

 if (attrnamespace == POSIX1E_ACL_ACCESS_EXTATTR_NAMESPACE &&
     !strcmp(name, POSIX1E_ACL_ACCESS_EXTATTR_NAME))
  return (EXT4_XATTR_INDEX_POSIX_ACL_ACCESS);

 switch (attrnamespace) {
 case 129:
  return (EXT4_XATTR_INDEX_SYSTEM);

 case 128:
  return (EXT4_XATTR_INDEX_USER);
 }





 return (-1);
}
