
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct netmap_slot {int buf_idx; } ;
struct netmap_mem_d {int dummy; } ;
struct TYPE_2__ {int objfree; int name; } ;


 int netmap_free_buf (struct netmap_mem_d*,int) ;
 int nm_prdis (char*,int ,int ) ;
 TYPE_1__* p ;

__attribute__((used)) static void
netmap_free_bufs(struct netmap_mem_d *nmd, struct netmap_slot *slot, u_int n)
{
 u_int i;

 for (i = 0; i < n; i++) {
  if (slot[i].buf_idx > 1)
   netmap_free_buf(nmd, slot[i].buf_idx);
 }
 nm_prdis("%s: released some buffers, available: %u",
   p->name, p->objfree);
}
