
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int sg; } ;
typedef TYPE_1__ xdma_channel_t ;


 int M_XDMA ;
 int XCHAN_SGLIST_ALLOCATED ;
 int free (int ,int ) ;

void
xchan_sglist_free(xdma_channel_t *xchan)
{

 if (xchan->flags & XCHAN_SGLIST_ALLOCATED)
  free(xchan->sg, M_XDMA);

 xchan->flags &= ~XCHAN_SGLIST_ALLOCATED;
}
