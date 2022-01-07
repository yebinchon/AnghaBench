
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_list {struct pack_list* next; } ;



__attribute__((used)) static inline size_t pack_list_size(struct pack_list *pl)
{
 size_t ret = 0;
 while (pl) {
  ret++;
  pl = pl->next;
 }
 return ret;
}
