
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int REF_HEADS ;
 unsigned int REF_NORMAL ;
 unsigned int REF_TAGS ;
 scalar_t__ check_refname_format (char const*,int ) ;
 int skip_prefix (char const*,char*,char const**) ;
 scalar_t__ starts_with (char const*,char*) ;

__attribute__((used)) static int check_ref(const char *name, unsigned int flags)
{
 if (!flags)
  return 1;

 if (!skip_prefix(name, "refs/", &name))
  return 0;


 if ((flags & REF_NORMAL) && check_refname_format(name, 0))
  return 0;


 if ((flags & REF_HEADS) && starts_with(name, "heads/"))
  return 1;


 if ((flags & REF_TAGS) && starts_with(name, "tags/"))
  return 1;


 return !(flags & ~REF_NORMAL);
}
