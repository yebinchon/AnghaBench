
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pattern; } ;
struct TYPE_8__ {TYPE_3__ pat; TYPE_2__* attr; } ;
struct match_attr {int num_attr; TYPE_4__ u; scalar_t__ is_macro; TYPE_1__* state; } ;
struct git_attr {size_t attr_nr; } ;
struct all_attrs_item {char* value; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {char* setto; struct git_attr* attr; } ;


 char const* ATTR__UNKNOWN ;
 int debug_set (char const*,int ,struct git_attr const*,char const*) ;
 int macroexpand_one (struct all_attrs_item*,size_t,int) ;

__attribute__((used)) static int fill_one(const char *what, struct all_attrs_item *all_attrs,
      const struct match_attr *a, int rem)
{
 int i;

 for (i = a->num_attr - 1; rem > 0 && i >= 0; i--) {
  const struct git_attr *attr = a->state[i].attr;
  const char **n = &(all_attrs[attr->attr_nr].value);
  const char *v = a->state[i].setto;

  if (*n == ATTR__UNKNOWN) {
   debug_set(what,
      a->is_macro ? a->u.attr->name : a->u.pat.pattern,
      attr, v);
   *n = v;
   rem--;
   rem = macroexpand_one(all_attrs, attr->attr_nr, rem);
  }
 }
 return rem;
}
