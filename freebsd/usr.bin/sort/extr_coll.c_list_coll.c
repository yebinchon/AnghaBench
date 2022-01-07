
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {int dummy; } ;


 int list_coll_offset (struct sort_list_item**,struct sort_list_item**,int ) ;

int
list_coll(struct sort_list_item **ss1, struct sort_list_item **ss2)
{

 return (list_coll_offset(ss1, ss2, 0));
}
