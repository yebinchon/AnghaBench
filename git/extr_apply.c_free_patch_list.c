
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {struct patch* next; } ;


 int free_patch (struct patch*) ;

__attribute__((used)) static void free_patch_list(struct patch *list)
{
 while (list) {
  struct patch *next = list->next;
  free_patch(list);
  list = next;
 }
}
