
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ type; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 scalar_t__ BWN_PHYTYPE_G ;
 int BWN_SHARED ;
 int BWN_WRITE_2 (struct bwn_mac*,int,scalar_t__) ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int,scalar_t__) ;

__attribute__((used)) static void
bwn_set_slot_time(struct bwn_mac *mac, uint16_t time)
{


 if (mac->mac_phy.type != BWN_PHYTYPE_G)
  return;

 BWN_WRITE_2(mac, 0x684, 510 + time);




}
