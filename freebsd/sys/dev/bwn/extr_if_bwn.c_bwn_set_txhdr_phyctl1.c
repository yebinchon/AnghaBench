
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct bwn_phy {scalar_t__ type; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;






 scalar_t__ BWN_ISCCKRATE (int) ;
 scalar_t__ BWN_PHYTYPE_LP ;
 int BWN_TXH_PHY1_BW_20 ;
 int BWN_TXH_PHY1_CRATE_1_2 ;
 int BWN_TXH_PHY1_CRATE_3_4 ;
 int BWN_TXH_PHY1_MODE_SISO ;
 int BWN_TXH_PHY1_MODUL_BPSK ;
 int BWN_TXH_PHY1_MODUL_QAM16 ;
 int BWN_TXH_PHY1_MODUL_QAM64 ;
 int BWN_TXH_PHY1_MODUL_QPSK ;

__attribute__((used)) static uint16_t
bwn_set_txhdr_phyctl1(struct bwn_mac *mac, uint8_t bitrate)
{
 struct bwn_phy *phy = &mac->mac_phy;
 uint16_t control = 0;
 uint16_t bw;


 bw = BWN_TXH_PHY1_BW_20;

 if (BWN_ISCCKRATE(bitrate) && phy->type != BWN_PHYTYPE_LP) {
  control = bw;
 } else {
  control = bw;



  switch (bitrate) {
  case 138:
   control |= 0;
   break;
  case 137:
   control |= 1;
   break;
  case 136:
   control |= 2;
   break;
  case 139:
   control |= 3;
   break;
  case 129:
   control |= BWN_TXH_PHY1_CRATE_1_2;
   control |= BWN_TXH_PHY1_MODUL_BPSK;
   break;
  case 128:
   control |= BWN_TXH_PHY1_CRATE_3_4;
   control |= BWN_TXH_PHY1_MODUL_BPSK;
   break;
  case 135:
   control |= BWN_TXH_PHY1_CRATE_1_2;
   control |= BWN_TXH_PHY1_MODUL_QPSK;
   break;
  case 134:
   control |= BWN_TXH_PHY1_CRATE_3_4;
   control |= BWN_TXH_PHY1_MODUL_QPSK;
   break;
  case 133:
   control |= BWN_TXH_PHY1_CRATE_1_2;
   control |= BWN_TXH_PHY1_MODUL_QAM16;
   break;
  case 132:
   control |= BWN_TXH_PHY1_CRATE_3_4;
   control |= BWN_TXH_PHY1_MODUL_QAM16;
   break;
  case 131:
   control |= BWN_TXH_PHY1_CRATE_1_2;
   control |= BWN_TXH_PHY1_MODUL_QAM64;
   break;
  case 130:
   control |= BWN_TXH_PHY1_CRATE_3_4;
   control |= BWN_TXH_PHY1_MODUL_QAM64;
   break;
  default:
   break;
  }
  control |= BWN_TXH_PHY1_MODE_SISO;
 }

 return control;
}
