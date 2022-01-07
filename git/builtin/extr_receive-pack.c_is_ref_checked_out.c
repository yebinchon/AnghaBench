
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int head_name ;
 scalar_t__ is_bare_repository () ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int is_ref_checked_out(const char *ref)
{
 if (is_bare_repository())
  return 0;

 if (!head_name)
  return 0;
 return !strcmp(head_name, ref);
}
