
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xr_mem; } ;
typedef TYPE_1__ xdma_channel_t ;


 int M_XDMA ;
 int free (int ,int ) ;

int
xchan_bank_free(xdma_channel_t *xchan)
{

 free(xchan->xr_mem, M_XDMA);

 return (0);
}
