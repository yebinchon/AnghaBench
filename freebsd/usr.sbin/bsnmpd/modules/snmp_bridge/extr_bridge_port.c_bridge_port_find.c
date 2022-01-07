
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_port {scalar_t__ sysindex; scalar_t__ if_idx; } ;
struct bridge_if {scalar_t__ sysindex; struct bridge_port* f_bp; } ;
typedef scalar_t__ int32_t ;


 struct bridge_port* TAILQ_NEXT (struct bridge_port*,int ) ;
 int b_p ;

struct bridge_port *
bridge_port_find(int32_t if_idx, struct bridge_if *bif)
{
 struct bridge_port *bp;

 for (bp = bif->f_bp; bp != ((void*)0); bp = TAILQ_NEXT(bp, b_p)) {
  if (bp->sysindex != bif->sysindex) {
   bp = ((void*)0);
   break;
  }

  if (bp->if_idx == if_idx)
   break;
 }

 return (bp);
}
