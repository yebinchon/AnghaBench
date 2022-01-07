
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_ctx {scalar_t__ qp_bitmap; int mw_count; struct ntb_transport_child* mw_vec; struct ntb_transport_child* qp_vec; int link_watchdog; int link_work; int link_cleanup; struct ntb_transport_child* child; } ;
struct ntb_transport_child {int dev; struct ntb_transport_child* next; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int M_NTB_T ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int ) ;
 struct ntb_transport_ctx* device_get_softc (int ) ;
 int free (struct ntb_transport_child*,int ) ;
 int ntb_clear_ctx (int ) ;
 int ntb_free_mw (struct ntb_transport_ctx*,int) ;
 int ntb_link_disable (int ) ;
 int ntb_transport_link_cleanup (struct ntb_transport_ctx*) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static int
ntb_transport_detach(device_t dev)
{
 struct ntb_transport_ctx *nt = device_get_softc(dev);
 struct ntb_transport_child **cpp = &nt->child;
 struct ntb_transport_child *nc;
 int error = 0, i;

 while ((nc = *cpp) != ((void*)0)) {
  *cpp = (*cpp)->next;
  error = device_delete_child(dev, nc->dev);
  if (error)
   break;
  free(nc, M_DEVBUF);
 }
 KASSERT(nt->qp_bitmap == 0,
     ("Some queues not freed on detach (%jx)", nt->qp_bitmap));

 ntb_transport_link_cleanup(nt);
 taskqueue_drain(taskqueue_swi, &nt->link_cleanup);
 callout_drain(&nt->link_work);
 callout_drain(&nt->link_watchdog);

 ntb_link_disable(dev);
 ntb_clear_ctx(dev);

 for (i = 0; i < nt->mw_count; i++)
  ntb_free_mw(nt, i);

 free(nt->qp_vec, M_NTB_T);
 free(nt->mw_vec, M_NTB_T);
 return (0);
}
