
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int mac_flags; } ;


 int BWN_MACCMD ;
 int BWN_MACCMD_DFQ_VALID ;
 int BWN_MAC_FLAG_DFQVALID ;
 int BWN_READ_4 (struct bwn_mac*,int ) ;
 int BWN_WRITE_4 (struct bwn_mac*,int ,int) ;

__attribute__((used)) static void
bwn_intr_atim_end(struct bwn_mac *mac)
{

 if (mac->mac_flags & BWN_MAC_FLAG_DFQVALID) {
  BWN_WRITE_4(mac, BWN_MACCMD,
      BWN_READ_4(mac, BWN_MACCMD) | BWN_MACCMD_DFQ_VALID);
  mac->mac_flags &= ~BWN_MAC_FLAG_DFQVALID;
 }
}
