
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_dma_ring {int dr_numslots; int dr_usedslot; TYPE_1__* dr_mac; } ;
struct TYPE_2__ {int mac_sc; } ;


 int BWN_ASSERT_LOCKED (int ) ;

__attribute__((used)) static int
bwn_dma_freeslot(struct bwn_dma_ring *dr)
{
 BWN_ASSERT_LOCKED(dr->dr_mac->mac_sc);

 return (dr->dr_numslots - dr->dr_usedslot);
}
