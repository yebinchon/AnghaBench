
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {TYPE_1__* next; struct netmap_mem_d* prev; } ;
struct TYPE_2__ {struct netmap_mem_d* prev; } ;


 struct netmap_mem_d* netmap_last_mem_d ;

__attribute__((used)) static void
nm_mem_release_id(struct netmap_mem_d *nmd)
{
 nmd->prev->next = nmd->next;
 nmd->next->prev = nmd->prev;

 if (netmap_last_mem_d == nmd)
  netmap_last_mem_d = nmd->prev;

 nmd->prev = nmd->next = ((void*)0);
}
