
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swdevt {int * sw_id; } ;
struct g_consumer {scalar_t__ index; } ;


 int MA_OWNED ;
 int M_NOWAIT ;
 scalar_t__ g_post_event (int ,struct g_consumer*,int ,int *) ;
 int mtx_assert (int *,int ) ;
 int sw_dev_mtx ;
 int swapgeom_close_ev ;

__attribute__((used)) static void
swapgeom_release(struct g_consumer *cp, struct swdevt *sp)
{

 mtx_assert(&sw_dev_mtx, MA_OWNED);
 cp->index--;
 if (cp->index == 0) {
  if (g_post_event(swapgeom_close_ev, cp, M_NOWAIT, ((void*)0)) == 0)
   sp->sw_id = ((void*)0);
 }
}
