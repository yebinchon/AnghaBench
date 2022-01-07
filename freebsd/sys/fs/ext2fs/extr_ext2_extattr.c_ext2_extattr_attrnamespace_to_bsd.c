
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTATTR_NAMESPACE_EMPTY ;
 int EXTATTR_NAMESPACE_SYSTEM ;
 int EXTATTR_NAMESPACE_USER ;
 int POSIX1E_ACL_ACCESS_EXTATTR_NAMESPACE ;
 int POSIX1E_ACL_DEFAULT_EXTATTR_NAMESPACE ;

__attribute__((used)) static int
ext2_extattr_attrnamespace_to_bsd(int attrnamespace)
{

 switch (attrnamespace) {
 case 129:
  return (EXTATTR_NAMESPACE_SYSTEM);

 case 128:
  return (EXTATTR_NAMESPACE_USER);

 case 130:
  return (POSIX1E_ACL_DEFAULT_EXTATTR_NAMESPACE);

 case 131:
  return (POSIX1E_ACL_ACCESS_EXTATTR_NAMESPACE);
 }

 return (EXTATTR_NAMESPACE_EMPTY);
}
