
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* shorten_unambiguous_ref (char const*,int ) ;
 scalar_t__ starts_with (char const*,char*) ;

__attribute__((used)) static const char *name_ref_abbrev(const char *refname, int shorten_unambiguous)
{
 if (shorten_unambiguous)
  refname = shorten_unambiguous_ref(refname, 0);
 else if (starts_with(refname, "refs/heads/"))
  refname = refname + 11;
 else if (starts_with(refname, "refs/"))
  refname = refname + 5;
 return refname;
}
