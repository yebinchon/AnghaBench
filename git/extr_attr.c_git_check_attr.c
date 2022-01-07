
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct attr_check {int nr; TYPE_3__* items; TYPE_1__* all_attrs; } ;
struct TYPE_6__ {char const* value; TYPE_2__* attr; } ;
struct TYPE_5__ {size_t attr_nr; } ;
struct TYPE_4__ {char* value; } ;


 char const* ATTR__UNKNOWN ;
 char* ATTR__UNSET ;
 int collect_some_attrs (struct index_state const*,char const*,struct attr_check*) ;

void git_check_attr(const struct index_state *istate,
      const char *path,
      struct attr_check *check)
{
 int i;

 collect_some_attrs(istate, path, check);

 for (i = 0; i < check->nr; i++) {
  size_t n = check->items[i].attr->attr_nr;
  const char *value = check->all_attrs[n].value;
  if (value == ATTR__UNKNOWN)
   value = ATTR__UNSET;
  check->items[i].value = value;
 }
}
