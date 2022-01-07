
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {int dummy; } ;
struct sort_level {int level; struct sort_list_item** tosort; } ;


 int add_leaf (struct sort_level*,struct sort_list_item*) ;
 int add_to_sublevel (struct sort_level*,struct sort_list_item*,int) ;
 int get_wc_index (struct sort_list_item*,int ) ;

__attribute__((used)) static void
place_item(struct sort_level *sl, size_t item)
{
 struct sort_list_item *sli;
 int c;

 sli = sl->tosort[item];
 c = get_wc_index(sli, sl->level);

 if (c == -1)
  add_leaf(sl, sli);
 else
  add_to_sublevel(sl, sli, c);
}
