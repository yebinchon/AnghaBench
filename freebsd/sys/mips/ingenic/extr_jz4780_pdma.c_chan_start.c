
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_channel {int dummy; } ;
struct pdma_softc {int dummy; } ;
struct pdma_channel {int index; int desc_ring_paddr; int cur_desc; struct xdma_channel* xchan; } ;


 int DCS_CTE ;
 int DCS_DES8 ;
 int PDMA_DCS (int) ;
 int PDMA_DDA (int) ;
 int PDMA_DDS ;
 int WRITE4 (struct pdma_softc*,int ,int) ;

__attribute__((used)) static int
chan_start(struct pdma_softc *sc, struct pdma_channel *chan)
{
 struct xdma_channel *xchan;

 xchan = chan->xchan;


 WRITE4(sc, PDMA_DCS(chan->index), DCS_DES8);
 WRITE4(sc, PDMA_DDA(chan->index),
     chan->desc_ring_paddr + 8 * 4 * chan->cur_desc);

 WRITE4(sc, PDMA_DDS, (1 << chan->index));


 WRITE4(sc, PDMA_DCS(chan->index), (DCS_DES8 | DCS_CTE));

 return (0);
}
