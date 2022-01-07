
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct attr_check {int all_attrs_nr; int all_attrs; int stack; } ;


 int all_attrs_init (int *,struct attr_check*) ;
 int determine_macros (int ,int ) ;
 int fill (char const*,int,int,int ,int ,int) ;
 int g_attr_hashmap ;
 int prepare_attr_stack (struct index_state const*,char const*,int,int *) ;

__attribute__((used)) static void collect_some_attrs(const struct index_state *istate,
          const char *path,
          struct attr_check *check)
{
 int pathlen, rem, dirlen;
 const char *cp, *last_slash = ((void*)0);
 int basename_offset;

 for (cp = path; *cp; cp++) {
  if (*cp == '/' && cp[1])
   last_slash = cp;
 }
 pathlen = cp - path;
 if (last_slash) {
  basename_offset = last_slash + 1 - path;
  dirlen = last_slash - path;
 } else {
  basename_offset = 0;
  dirlen = 0;
 }

 prepare_attr_stack(istate, path, dirlen, &check->stack);
 all_attrs_init(&g_attr_hashmap, check);
 determine_macros(check->all_attrs, check->stack);

 rem = check->all_attrs_nr;
 fill(path, pathlen, basename_offset, check->stack, check->all_attrs, rem);
}
