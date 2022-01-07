
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sort_list_item {struct bwstring* str; int ka; } ;
struct keys_array {int dummy; } ;
struct bwstring {int dummy; } ;
struct TYPE_2__ {scalar_t__ complex_sort; int sflag; } ;


 int bwsprintf (int ,struct bwstring*,char*,char*) ;
 int clean_keys_array (struct bwstring*,struct keys_array*) ;
 scalar_t__ debug_sort ;
 int key_coll (struct keys_array*,int *,int ) ;
 struct keys_array* keys_array_alloc () ;
 int preproc (struct bwstring*,struct keys_array*) ;
 int printf (char*,...) ;
 int sort_free (struct keys_array*) ;
 int sort_list_item_make_key (struct sort_list_item*) ;
 TYPE_1__ sort_opts_vals ;
 int stdout ;
 int top_level_str_coll (struct bwstring*,struct bwstring*) ;

int
str_list_coll(struct bwstring *str1, struct sort_list_item **ss2)
{
 struct keys_array *ka1;
 int ret = 0;

 ka1 = keys_array_alloc();

 preproc(str1, ka1);

 sort_list_item_make_key(*ss2);

 if (debug_sort) {
  bwsprintf(stdout, str1, "; s1=<", ">");
  bwsprintf(stdout, (*ss2)->str, ", s2=<", ">");
 }

 ret = key_coll(ka1, &((*ss2)->ka), 0);

 if (debug_sort)
  printf("; cmp1=%d", ret);

 clean_keys_array(str1, ka1);
 sort_free(ka1);

 if ((ret == 0) && !(sort_opts_vals.sflag) && sort_opts_vals.complex_sort) {
  ret = top_level_str_coll(str1, ((*ss2)->str));
  if (debug_sort)
   printf("; cmp2=%d", ret);
 }

 if (debug_sort)
  printf("\n");

 return (ret);
}
