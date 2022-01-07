
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_ref_exclusion (int *) ;
 int for_each_glob_ref_in (int ,char const*,char const*,int *) ;
 int for_each_ref_in (char const*,int ,int *) ;
 int ref_excludes ;
 int show_reference ;

__attribute__((used)) static void handle_ref_opt(const char *pattern, const char *prefix)
{
 if (pattern)
  for_each_glob_ref_in(show_reference, pattern, prefix, ((void*)0));
 else
  for_each_ref_in(prefix, show_reference, ((void*)0));
 clear_ref_exclusion(&ref_excludes);
}
