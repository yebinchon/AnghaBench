
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;
 scalar_t__ EXT2_EXTATTR_NAMELEN_MAX ;
 int EXTATTR_NAMESPACE_EMPTY ;
 scalar_t__ strlen (char const*) ;

int
ext2_extattr_valid_attrname(int attrnamespace, const char *attrname)
{
 if (attrnamespace == EXTATTR_NAMESPACE_EMPTY)
  return (EINVAL);

 if (strlen(attrname) == 0)
  return (EINVAL);

 if (strlen(attrname) + 1 > EXT2_EXTATTR_NAMELEN_MAX)
  return (ENAMETOOLONG);

 return (0);
}
