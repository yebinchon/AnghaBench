
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POSIX1E_ACL_ACCESS_EXTATTR_NAMESPACE ;
 int POSIX1E_ACL_DEFAULT_EXTATTR_NAMESPACE ;

__attribute__((used)) static const char *
ext2_extattr_name_to_linux(int attrnamespace, const char *name)
{

 if (attrnamespace == POSIX1E_ACL_DEFAULT_EXTATTR_NAMESPACE ||
     attrnamespace == POSIX1E_ACL_ACCESS_EXTATTR_NAMESPACE)
  return ("");
 else
  return (name);
}
