
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_dma {int mcast; int * wme; int rx; } ;
struct TYPE_2__ {struct bwn_dma dma; } ;
struct bwn_mac {int mac_flags; TYPE_1__ mac_method; } ;


 int BWN_MAC_FLAG_DMA ;
 size_t WME_AC_BE ;
 size_t WME_AC_BK ;
 size_t WME_AC_VI ;
 size_t WME_AC_VO ;
 int bwn_dma_ringstop (int *) ;

__attribute__((used)) static void
bwn_dma_stop(struct bwn_mac *mac)
{
 struct bwn_dma *dma;

 if ((mac->mac_flags & BWN_MAC_FLAG_DMA) == 0)
  return;
 dma = &mac->mac_method.dma;

 bwn_dma_ringstop(&dma->rx);
 bwn_dma_ringstop(&dma->wme[WME_AC_BK]);
 bwn_dma_ringstop(&dma->wme[WME_AC_BE]);
 bwn_dma_ringstop(&dma->wme[WME_AC_VI]);
 bwn_dma_ringstop(&dma->wme[WME_AC_VO]);
 bwn_dma_ringstop(&dma->mcast);
}
