
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct imush {int error; int maddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
imc(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct imush *imushp = (struct imush *) arg;

 if (!(imushp->error = error))
  imushp->maddr = segs[0].ds_addr;
}
