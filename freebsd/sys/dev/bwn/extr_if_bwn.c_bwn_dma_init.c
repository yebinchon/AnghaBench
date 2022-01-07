
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_dma {int rx; int mcast; int * wme; } ;
struct TYPE_2__ {struct bwn_dma dma; } ;
struct bwn_mac {TYPE_1__ mac_method; } ;


 size_t WME_AC_BE ;
 size_t WME_AC_BK ;
 size_t WME_AC_VI ;
 size_t WME_AC_VO ;
 int bwn_dma_setup (int ) ;

__attribute__((used)) static void
bwn_dma_init(struct bwn_mac *mac)
{
 struct bwn_dma *dma = &mac->mac_method.dma;


 bwn_dma_setup(dma->wme[WME_AC_BK]);
 bwn_dma_setup(dma->wme[WME_AC_BE]);
 bwn_dma_setup(dma->wme[WME_AC_VI]);
 bwn_dma_setup(dma->wme[WME_AC_VO]);
 bwn_dma_setup(dma->mcast);

 bwn_dma_setup(dma->rx);
}
