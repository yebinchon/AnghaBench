
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pat; } ;
struct match_attr {TYPE_1__ u; scalar_t__ is_macro; } ;
struct attr_stack {char* origin; int num_matches; int originlen; struct match_attr** attrs; struct attr_stack* prev; } ;
struct all_attrs_item {int dummy; } ;


 int fill_one (char*,struct all_attrs_item*,struct match_attr const*,int) ;
 scalar_t__ path_matches (char const*,int,int,int *,char const*,int ) ;

__attribute__((used)) static int fill(const char *path, int pathlen, int basename_offset,
  const struct attr_stack *stack,
  struct all_attrs_item *all_attrs, int rem)
{
 for (; rem > 0 && stack; stack = stack->prev) {
  int i;
  const char *base = stack->origin ? stack->origin : "";

  for (i = stack->num_matches - 1; 0 < rem && 0 <= i; i--) {
   const struct match_attr *a = stack->attrs[i];
   if (a->is_macro)
    continue;
   if (path_matches(path, pathlen, basename_offset,
      &a->u.pat, base, stack->originlen))
    rem = fill_one("fill", all_attrs, a, rem);
  }
 }

 return rem;
}
