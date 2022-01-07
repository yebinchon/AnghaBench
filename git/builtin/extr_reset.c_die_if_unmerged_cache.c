
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ,int ) ;
 scalar_t__ is_merge () ;
 char** reset_type_names ;
 scalar_t__ unmerged_cache () ;

__attribute__((used)) static void die_if_unmerged_cache(int reset_type)
{
 if (is_merge() || unmerged_cache())
  die(_("Cannot do a %s reset in the middle of a merge."),
      _(reset_type_names[reset_type]));

}
