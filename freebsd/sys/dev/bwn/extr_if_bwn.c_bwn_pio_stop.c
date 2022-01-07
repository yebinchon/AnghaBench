
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_pio {int * wme; int mcast; } ;
struct TYPE_2__ {struct bwn_pio pio; } ;
struct bwn_mac {int mac_flags; TYPE_1__ mac_method; } ;


 int BWN_MAC_FLAG_DMA ;
 size_t WME_AC_BE ;
 size_t WME_AC_BK ;
 size_t WME_AC_VI ;
 size_t WME_AC_VO ;
 int bwn_destroy_queue_tx (int *) ;

__attribute__((used)) static void
bwn_pio_stop(struct bwn_mac *mac)
{
 struct bwn_pio *pio;

 if (mac->mac_flags & BWN_MAC_FLAG_DMA)
  return;
 pio = &mac->mac_method.pio;

 bwn_destroy_queue_tx(&pio->mcast);
 bwn_destroy_queue_tx(&pio->wme[WME_AC_VO]);
 bwn_destroy_queue_tx(&pio->wme[WME_AC_VI]);
 bwn_destroy_queue_tx(&pio->wme[WME_AC_BE]);
 bwn_destroy_queue_tx(&pio->wme[WME_AC_BK]);
}
