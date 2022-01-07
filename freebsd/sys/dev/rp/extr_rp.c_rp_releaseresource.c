
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rp_port {int rp_tty; } ;
struct TYPE_3__ {int num_ports; scalar_t__ free; int hwmtx; scalar_t__ hwmtx_init; struct rp_port* rp; } ;
typedef TYPE_1__ CONTROLLER_t ;


 int M_DEVBUF ;
 int atomic_add_32 (scalar_t__*,int) ;
 int free (struct rp_port*,int ) ;
 int hz ;
 int mtx_destroy (int *) ;
 int pause (char*,int) ;
 int tty_lock (int ) ;
 int tty_rel_gone (int ) ;

void
rp_releaseresource(CONTROLLER_t *ctlp)
{
 struct rp_port *rp;
 int i;

 if (ctlp->rp != ((void*)0)) {
  for (i = 0; i < ctlp->num_ports; i++) {
   rp = ctlp->rp + i;
   atomic_add_32(&ctlp->free, 1);
   tty_lock(rp->rp_tty);
   tty_rel_gone(rp->rp_tty);
  }
                free(ctlp->rp, M_DEVBUF);
                ctlp->rp = ((void*)0);
 }

 while (ctlp->free != 0) {
  pause("rpwt", hz / 10);
 }

 if (ctlp->hwmtx_init)
  mtx_destroy(&ctlp->hwmtx);
}
