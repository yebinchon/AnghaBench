
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact {struct vmbus_xact* x_priv; struct vmbus_xact* x_resp0; int x_req; int x_req_dma; } ;


 int M_DEVBUF ;
 int free (struct vmbus_xact*,int ) ;
 int hyperv_dmamem_free (int *,int ) ;

__attribute__((used)) static void
vmbus_xact_free(struct vmbus_xact *xact)
{

 hyperv_dmamem_free(&xact->x_req_dma, xact->x_req);
 free(xact->x_resp0, M_DEVBUF);
 if (xact->x_priv != ((void*)0))
  free(xact->x_priv, M_DEVBUF);
 free(xact, M_DEVBUF);
}
