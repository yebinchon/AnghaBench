
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {int dummy; } ;


 int run_sort (struct sort_list_item**,size_t) ;

void
rxsort(struct sort_list_item **base, size_t nmemb)
{

 run_sort(base, nmemb);
}
