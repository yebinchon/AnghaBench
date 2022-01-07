
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdma_channel {scalar_t__ chan; } ;
struct softdma_desc {int dummy; } ;
struct softdma_channel {int descs_num; int descs; } ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int malloc (int,int ,int) ;

__attribute__((used)) static int
softdma_desc_alloc(struct xdma_channel *xchan)
{
 struct softdma_channel *chan;
 uint32_t nsegments;

 chan = (struct softdma_channel *)xchan->chan;

 nsegments = chan->descs_num;

 chan->descs = malloc(nsegments * sizeof(struct softdma_desc),
     M_DEVBUF, (M_WAITOK | M_ZERO));

 return (0);
}
