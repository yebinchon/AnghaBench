
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {int str; } ;


 int top_level_str_coll (int ,int ) ;

int
list_coll_by_str_only(struct sort_list_item **ss1, struct sort_list_item **ss2)
{

 return (top_level_str_coll(((*ss1)->str), ((*ss2)->str)));
}
