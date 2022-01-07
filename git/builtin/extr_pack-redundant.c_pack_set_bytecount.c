
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pack_list {struct pack_list* next; TYPE_1__* pack; } ;
typedef int off_t ;
struct TYPE_2__ {scalar_t__ index_size; scalar_t__ pack_size; } ;



__attribute__((used)) static inline off_t pack_set_bytecount(struct pack_list *pl)
{
 off_t ret = 0;
 while (pl) {
  ret += pl->pack->pack_size;
  ret += pl->pack->index_size;
  pl = pl->next;
 }
 return ret;
}
