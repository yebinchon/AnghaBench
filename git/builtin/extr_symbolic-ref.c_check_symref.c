
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REF_ISSYMREF ;
 int die (char*,char const*) ;
 int puts (char const*) ;
 char* resolve_ref_unsafe (char const*,int ,int *,int*) ;
 char* shorten_unambiguous_ref (char const*,int ) ;

__attribute__((used)) static int check_symref(const char *HEAD, int quiet, int shorten, int print)
{
 int flag;
 const char *refname = resolve_ref_unsafe(HEAD, 0, ((void*)0), &flag);

 if (!refname)
  die("No such ref: %s", HEAD);
 else if (!(flag & REF_ISSYMREF)) {
  if (!quiet)
   die("ref %s is not a symbolic ref", HEAD);
  else
   return 1;
 }
 if (print) {
  if (shorten)
   refname = shorten_unambiguous_ref(refname, 0);
  puts(refname);
 }
 return 0;
}
