
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct port_des {TYPE_2__* nmd; int ring; struct overflow_queue* oq; } ;
struct overflow_queue {scalar_t__ n; } ;
struct netmap_slot {int buf_idx; } ;
struct TYPE_6__ {size_t output_rings; } ;
struct TYPE_5__ {TYPE_1__* nifp; } ;
struct TYPE_4__ {int ni_bufs_head; } ;


 int D (char*,int) ;
 scalar_t__ NETMAP_BUF (int ,int ) ;
 TYPE_3__ glob_arg ;
 int nm_close (TYPE_2__*) ;
 struct netmap_slot oq_deq (struct overflow_queue*) ;
 struct port_des* ports ;

__attribute__((used)) static void
free_buffers(void)
{
 int i, tot = 0;
 struct port_des *rxport = &ports[glob_arg.output_rings];


 for (i = 0; i < glob_arg.output_rings + 1; i++) {
  struct port_des *cp = &ports[i];
  struct overflow_queue *q = cp->oq;

  if (!q)
   continue;

  while (q->n) {
   struct netmap_slot s = oq_deq(q);
   uint32_t *b = (uint32_t *)NETMAP_BUF(cp->ring, s.buf_idx);

   *b = rxport->nmd->nifp->ni_bufs_head;
   rxport->nmd->nifp->ni_bufs_head = s.buf_idx;
   tot++;
  }
 }
 D("added %d buffers to netmap free list", tot);

 for (i = 0; i < glob_arg.output_rings + 1; ++i) {
  nm_close(ports[i].nmd);
 }
}
