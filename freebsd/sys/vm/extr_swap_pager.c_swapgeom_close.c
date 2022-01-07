
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct swdevt {struct g_consumer* sw_id; } ;
struct g_consumer {int dummy; } ;


 int M_WAITOK ;
 int g_waitfor_event (int ,struct g_consumer*,int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sw_dev_mtx ;
 int swapgeom_close_ev ;

__attribute__((used)) static void
swapgeom_close(struct thread *td, struct swdevt *sw)
{
 struct g_consumer *cp;

 mtx_lock(&sw_dev_mtx);
 cp = sw->sw_id;
 sw->sw_id = ((void*)0);
 mtx_unlock(&sw_dev_mtx);






 if (cp != ((void*)0))
  g_waitfor_event(swapgeom_close_ev, cp, M_WAITOK, ((void*)0));
}
