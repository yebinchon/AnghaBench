
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct attr_check_item {char const* value; } ;
struct attr_check {int all_attrs_nr; TYPE_1__* all_attrs; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* value; TYPE_2__* attr; } ;


 char const* ATTR__UNKNOWN ;
 char const* ATTR__UNSET ;
 struct attr_check_item* attr_check_append (struct attr_check*,int ) ;
 int attr_check_reset (struct attr_check*) ;
 int collect_some_attrs (struct index_state const*,char const*,struct attr_check*) ;
 int git_attr (char const*) ;

void git_all_attrs(const struct index_state *istate,
     const char *path, struct attr_check *check)
{
 int i;

 attr_check_reset(check);
 collect_some_attrs(istate, path, check);

 for (i = 0; i < check->all_attrs_nr; i++) {
  const char *name = check->all_attrs[i].attr->name;
  const char *value = check->all_attrs[i].value;
  struct attr_check_item *item;
  if (value == ATTR__UNSET || value == ATTR__UNKNOWN)
   continue;
  item = attr_check_append(check, git_attr(name));
  item->value = value;
 }
}
