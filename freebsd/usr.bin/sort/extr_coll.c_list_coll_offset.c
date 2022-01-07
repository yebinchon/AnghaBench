
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sort_list_item {int str; int ka; } ;
struct TYPE_2__ {scalar_t__ complex_sort; int sflag; } ;


 int bwsprintf (int ,int ,char*,char*) ;
 scalar_t__ debug_sort ;
 int key_coll (int *,int *,size_t) ;
 int printf (char*,int) ;
 TYPE_1__ sort_opts_vals ;
 int stdout ;
 int top_level_str_coll (int ,int ) ;

int
list_coll_offset(struct sort_list_item **ss1, struct sort_list_item **ss2,
    size_t offset)
{
 int ret;

 ret = key_coll(&((*ss1)->ka), &((*ss2)->ka), offset);

 if (debug_sort) {
  if (offset)
   printf("; offset=%d", (int) offset);
  bwsprintf(stdout, ((*ss1)->str), "; s1=<", ">");
  bwsprintf(stdout, ((*ss2)->str), ", s2=<", ">");
  printf("; cmp1=%d\n", ret);
 }

 if (ret)
  return (ret);

 if (!(sort_opts_vals.sflag) && sort_opts_vals.complex_sort) {
  ret = top_level_str_coll(((*ss1)->str), ((*ss2)->str));
  if (debug_sort)
   printf("; cmp2=%d\n", ret);
 }

 return (ret);
}
