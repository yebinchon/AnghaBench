
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int sg; } ;
typedef TYPE_1__ xdma_channel_t ;
typedef int uint32_t ;
struct xdma_sglist {int dummy; } ;


 int M_WAITOK ;
 int M_XDMA ;
 int M_ZERO ;
 int XCHAN_SGLIST_ALLOCATED ;
 int XDMA_SGLIST_MAXLEN ;
 int malloc (int,int ,int) ;

int
xchan_sglist_alloc(xdma_channel_t *xchan)
{
 uint32_t sz;

 if (xchan->flags & XCHAN_SGLIST_ALLOCATED)
  return (-1);

 sz = (sizeof(struct xdma_sglist) * XDMA_SGLIST_MAXLEN);
 xchan->sg = malloc(sz, M_XDMA, M_WAITOK | M_ZERO);
 xchan->flags |= XCHAN_SGLIST_ALLOCATED;

 return (0);
}
