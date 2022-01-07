
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct attr_stack {int dummy; } ;


 scalar_t__ GIT_ATTR_CHECKIN ;
 scalar_t__ GIT_ATTR_CHECKOUT ;
 scalar_t__ GIT_ATTR_INDEX ;
 scalar_t__ direction ;
 int is_bare_repository () ;
 struct attr_stack* read_attr_from_file (char const*,int) ;
 struct attr_stack* read_attr_from_index (struct index_state const*,char const*,int) ;
 struct attr_stack* xcalloc (int,int) ;

__attribute__((used)) static struct attr_stack *read_attr(const struct index_state *istate,
        const char *path, int macro_ok)
{
 struct attr_stack *res = ((void*)0);

 if (direction == GIT_ATTR_INDEX) {
  res = read_attr_from_index(istate, path, macro_ok);
 } else if (!is_bare_repository()) {
  if (direction == GIT_ATTR_CHECKOUT) {
   res = read_attr_from_index(istate, path, macro_ok);
   if (!res)
    res = read_attr_from_file(path, macro_ok);
  } else if (direction == GIT_ATTR_CHECKIN) {
   res = read_attr_from_file(path, macro_ok);
   if (!res)






    res = read_attr_from_index(istate, path, macro_ok);
  }
 }

 if (!res)
  res = xcalloc(1, sizeof(*res));
 return res;
}
