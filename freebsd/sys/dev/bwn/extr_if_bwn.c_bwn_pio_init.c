
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_pio {int rx; int mcast; int * wme; } ;
struct TYPE_2__ {struct bwn_pio pio; } ;
struct bwn_mac {TYPE_1__ mac_method; } ;


 int BWN_MACCTL ;
 int BWN_MACCTL_BIGENDIAN ;
 int BWN_READ_4 (struct bwn_mac*,int ) ;
 int BWN_SHARED ;
 int BWN_SHARED_RX_PADOFFSET ;
 int BWN_WRITE_4 (struct bwn_mac*,int ,int) ;
 size_t WME_AC_BE ;
 size_t WME_AC_BK ;
 size_t WME_AC_VI ;
 size_t WME_AC_VO ;
 int bwn_pio_set_txqueue (struct bwn_mac*,int *,int) ;
 int bwn_pio_setupqueue_rx (struct bwn_mac*,int *,int ) ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int ,int ) ;

__attribute__((used)) static void
bwn_pio_init(struct bwn_mac *mac)
{
 struct bwn_pio *pio = &mac->mac_method.pio;

 BWN_WRITE_4(mac, BWN_MACCTL, BWN_READ_4(mac, BWN_MACCTL)
     & ~BWN_MACCTL_BIGENDIAN);
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_RX_PADOFFSET, 0);

 bwn_pio_set_txqueue(mac, &pio->wme[WME_AC_BK], 0);
 bwn_pio_set_txqueue(mac, &pio->wme[WME_AC_BE], 1);
 bwn_pio_set_txqueue(mac, &pio->wme[WME_AC_VI], 2);
 bwn_pio_set_txqueue(mac, &pio->wme[WME_AC_VO], 3);
 bwn_pio_set_txqueue(mac, &pio->mcast, 4);
 bwn_pio_setupqueue_rx(mac, &pio->rx, 0);
}
