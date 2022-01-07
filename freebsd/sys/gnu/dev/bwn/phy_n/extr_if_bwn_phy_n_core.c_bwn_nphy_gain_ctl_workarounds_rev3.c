
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int board_flags; } ;
struct bwn_softc {TYPE_1__ sc_board_info; } ;
struct bwn_nphy_gain_ctl_workaround_entry {int* lna1_gain; int* lna2_gain; int* gain_db; int* gain_bits; int init_gain; int* rfseq_init; int cliphi_gain; int clipmd_gain; int cliplo_gain; int nbclip; int wlclip; int crsminu; int crsminl; int crsmin; } ;
struct TYPE_4__ {int rev; } ;
struct bwn_mac {TYPE_2__ mac_phy; struct bwn_softc* mac_sc; } ;


 int B2056_RX0 ;
 int B2056_RX1 ;
 int B2056_RX_BIASPOLE_LNAA1_IDAC ;
 int B2056_RX_BIASPOLE_LNAG1_IDAC ;
 int B2056_RX_LNAA2_IDAC ;
 int B2056_RX_LNAG2_IDAC ;
 int B2056_RX_RSSI_GAIN ;
 int B2056_RX_RSSI_POLE ;
 int BHND_BFL_EXTLNA ;
 int BHND_BFL_EXTLNA_5GHZ ;
 int BWN_NPHY_BANDCTL ;
 int BWN_NPHY_BANDCTL_5GHZ ;
 int BWN_NPHY_C1_CGAINI ;
 int BWN_NPHY_C1_CGAINI_CL2DETECT ;
 int BWN_NPHY_C1_CLIPWBTHRES ;
 int BWN_NPHY_C1_CLIPWBTHRES_CLIP2 ;
 int BWN_NPHY_C1_NBCLIPTHRES ;
 int BWN_NPHY_C2_CGAINI ;
 int BWN_NPHY_C2_CGAINI_CL2DETECT ;
 int BWN_NPHY_C2_CLIPWBTHRES ;
 int BWN_NPHY_C2_CLIPWBTHRES_CLIP2 ;
 int BWN_NPHY_C2_NBCLIPTHRES ;
 int BWN_NPHY_CCK_SHIFTB_REF ;
 int BWN_NPHY_CRSMINPOWER0 ;
 int BWN_NPHY_CRSMINPOWERL0 ;
 int BWN_NPHY_CRSMINPOWERU0 ;
 int BWN_NPHY_REV3_C1_CLIP_HIGAIN_A ;
 int BWN_NPHY_REV3_C1_CLIP_LOGAIN_A ;
 int BWN_NPHY_REV3_C1_CLIP_MEDGAIN_A ;
 int BWN_NPHY_REV3_C1_INITGAIN_A ;
 int BWN_NPHY_REV3_C2_CLIP_HIGAIN_A ;
 int BWN_NPHY_REV3_C2_CLIP_LOGAIN_A ;
 int BWN_NPHY_REV3_C2_CLIP_MEDGAIN_A ;
 int BWN_NPHY_REV3_C2_INITGAIN_A ;
 int BWN_NPHY_RXCTL ;
 int BWN_NTAB16 (int,int) ;
 int BWN_NTAB8 (int,int) ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;
 int BWN_PHY_SET (struct bwn_mac*,int ,int) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int ) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int) ;
 int BWN_RF_WRITE (struct bwn_mac*,int,int) ;
 struct bwn_nphy_gain_ctl_workaround_entry* bwn_nphy_get_gain_ctl_workaround_ent (struct bwn_mac*,int,int) ;
 int bwn_ntab_write_bulk (struct bwn_mac*,int ,int,int*) ;

__attribute__((used)) static void bwn_nphy_gain_ctl_workarounds_rev3(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;
 bool ghz5;
 bool ext_lna;
 uint16_t rssi_gain;
 struct bwn_nphy_gain_ctl_workaround_entry *e;
 uint8_t lpf_gain[6] = { 0x00, 0x06, 0x0C, 0x12, 0x12, 0x12 };
 uint8_t lpf_bits[6] = { 0, 1, 2, 3, 3, 3 };


 ghz5 = BWN_PHY_READ(mac, BWN_NPHY_BANDCTL)
  & BWN_NPHY_BANDCTL_5GHZ;
 ext_lna = ghz5 ? sc->sc_board_info.board_flags & BHND_BFL_EXTLNA_5GHZ :
  sc->sc_board_info.board_flags & BHND_BFL_EXTLNA;
 e = bwn_nphy_get_gain_ctl_workaround_ent(mac, ghz5, ext_lna);
 if (ghz5 && mac->mac_phy.rev >= 5)
  rssi_gain = 0x90;
 else
  rssi_gain = 0x50;

 BWN_PHY_SET(mac, BWN_NPHY_RXCTL, 0x0040);


 BWN_PHY_SET(mac, BWN_NPHY_C1_CGAINI, BWN_NPHY_C1_CGAINI_CL2DETECT);
 BWN_PHY_SET(mac, BWN_NPHY_C2_CGAINI, BWN_NPHY_C2_CGAINI_CL2DETECT);

 BWN_RF_WRITE(mac, B2056_RX0 | B2056_RX_BIASPOLE_LNAG1_IDAC,
   0x17);
 BWN_RF_WRITE(mac, B2056_RX1 | B2056_RX_BIASPOLE_LNAG1_IDAC,
   0x17);
 BWN_RF_WRITE(mac, B2056_RX0 | B2056_RX_LNAG2_IDAC, 0xF0);
 BWN_RF_WRITE(mac, B2056_RX1 | B2056_RX_LNAG2_IDAC, 0xF0);
 BWN_RF_WRITE(mac, B2056_RX0 | B2056_RX_RSSI_POLE, 0x00);
 BWN_RF_WRITE(mac, B2056_RX1 | B2056_RX_RSSI_POLE, 0x00);
 BWN_RF_WRITE(mac, B2056_RX0 | B2056_RX_RSSI_GAIN,
   rssi_gain);
 BWN_RF_WRITE(mac, B2056_RX1 | B2056_RX_RSSI_GAIN,
   rssi_gain);
 BWN_RF_WRITE(mac, B2056_RX0 | B2056_RX_BIASPOLE_LNAA1_IDAC,
   0x17);
 BWN_RF_WRITE(mac, B2056_RX1 | B2056_RX_BIASPOLE_LNAA1_IDAC,
   0x17);
 BWN_RF_WRITE(mac, B2056_RX0 | B2056_RX_LNAA2_IDAC, 0xFF);
 BWN_RF_WRITE(mac, B2056_RX1 | B2056_RX_LNAA2_IDAC, 0xFF);

 bwn_ntab_write_bulk(mac, BWN_NTAB8(0, 8), 4, e->lna1_gain);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(1, 8), 4, e->lna1_gain);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(0, 16), 4, e->lna2_gain);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(1, 16), 4, e->lna2_gain);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(0, 32), 10, e->gain_db);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(1, 32), 10, e->gain_db);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(2, 32), 10, e->gain_bits);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(3, 32), 10, e->gain_bits);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(0, 0x40), 6, lpf_gain);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(1, 0x40), 6, lpf_gain);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(2, 0x40), 6, lpf_bits);
 bwn_ntab_write_bulk(mac, BWN_NTAB8(3, 0x40), 6, lpf_bits);

 BWN_PHY_WRITE(mac, BWN_NPHY_REV3_C1_INITGAIN_A, e->init_gain);
 BWN_PHY_WRITE(mac, BWN_NPHY_REV3_C2_INITGAIN_A, e->init_gain);

 bwn_ntab_write_bulk(mac, BWN_NTAB16(7, 0x106), 2,
    e->rfseq_init);

 BWN_PHY_WRITE(mac, BWN_NPHY_REV3_C1_CLIP_HIGAIN_A, e->cliphi_gain);
 BWN_PHY_WRITE(mac, BWN_NPHY_REV3_C2_CLIP_HIGAIN_A, e->cliphi_gain);
 BWN_PHY_WRITE(mac, BWN_NPHY_REV3_C1_CLIP_MEDGAIN_A, e->clipmd_gain);
 BWN_PHY_WRITE(mac, BWN_NPHY_REV3_C2_CLIP_MEDGAIN_A, e->clipmd_gain);
 BWN_PHY_WRITE(mac, BWN_NPHY_REV3_C1_CLIP_LOGAIN_A, e->cliplo_gain);
 BWN_PHY_WRITE(mac, BWN_NPHY_REV3_C2_CLIP_LOGAIN_A, e->cliplo_gain);

 BWN_PHY_SETMASK(mac, BWN_NPHY_CRSMINPOWER0, 0xFF00, e->crsmin);
 BWN_PHY_SETMASK(mac, BWN_NPHY_CRSMINPOWERL0, 0xFF00, e->crsminl);
 BWN_PHY_SETMASK(mac, BWN_NPHY_CRSMINPOWERU0, 0xFF00, e->crsminu);
 BWN_PHY_WRITE(mac, BWN_NPHY_C1_NBCLIPTHRES, e->nbclip);
 BWN_PHY_WRITE(mac, BWN_NPHY_C2_NBCLIPTHRES, e->nbclip);
 BWN_PHY_SETMASK(mac, BWN_NPHY_C1_CLIPWBTHRES,
   ~BWN_NPHY_C1_CLIPWBTHRES_CLIP2, e->wlclip);
 BWN_PHY_SETMASK(mac, BWN_NPHY_C2_CLIPWBTHRES,
   ~BWN_NPHY_C2_CLIPWBTHRES_CLIP2, e->wlclip);
 BWN_PHY_WRITE(mac, BWN_NPHY_CCK_SHIFTB_REF, 0x809C);
}
