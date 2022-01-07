
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rp_port {TYPE_1__* rp_ctlp; } ;
struct TYPE_2__ {int free; } ;
typedef TYPE_1__ CONTROLLER_t ;


 int atomic_subtract_32 (int *,int) ;

__attribute__((used)) static void
rpfree(void *softc)
{
 struct rp_port *rp = softc;
 CONTROLLER_t *ctlp = rp->rp_ctlp;

 atomic_subtract_32(&ctlp->free, 1);
}
