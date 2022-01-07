
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {int ka; int str; } ;


 int preproc (int ,int *) ;

__attribute__((used)) static void
sort_list_item_make_key(struct sort_list_item *si)
{

 preproc(si->str, &(si->ka));
}
