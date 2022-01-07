
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_phy_lp_iq_est {int ie_ipwr; int ie_qpwr; int ie_iqprod; } ;
struct bwn_mac {int dummy; } ;


 int BWN_PHY_MASK (struct bwn_mac*,int ,int) ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;
 int BWN_PHY_RX_COMP_COEFF_S ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int) ;
 int CALC_COEFF (int,int ,int,int) ;
 int CALC_COEFF2 (int,int ,int,int) ;
 int bwn_nbits (int) ;
 int bwn_phy_lp_rx_iq_est (struct bwn_mac*,int,int,struct bwn_phy_lp_iq_est*) ;
 int bwn_sqrt (struct bwn_mac*,int) ;

__attribute__((used)) static int
bwn_phy_lp_calc_rx_iq_comp(struct bwn_mac *mac, uint16_t sample)
{
 struct bwn_phy_lp_iq_est ie;
 uint16_t v0, v1;
 int tmp[2], ret;

 v1 = BWN_PHY_READ(mac, BWN_PHY_RX_COMP_COEFF_S);
 v0 = v1 >> 8;
 v1 |= 0xff;

 BWN_PHY_SETMASK(mac, BWN_PHY_RX_COMP_COEFF_S, 0xff00, 0x00c0);
 BWN_PHY_MASK(mac, BWN_PHY_RX_COMP_COEFF_S, 0x00ff);

 ret = bwn_phy_lp_rx_iq_est(mac, sample, 32, &ie);
 if (ret == 0)
  goto done;

 if (ie.ie_ipwr + ie.ie_qpwr < 2) {
  ret = 0;
  goto done;
 }

 do { int _t; _t = bwn_nbits(ie.ie_iqprod) - 20; if (_t >= 0) { tmp[0] = ((ie.ie_iqprod << (30 - bwn_nbits(ie.ie_iqprod))) + (ie.ie_ipwr >> (1 + _t))) / (ie.ie_ipwr >> _t); } else { tmp[0] = ((ie.ie_iqprod << (30 - bwn_nbits(ie.ie_iqprod))) + (ie.ie_ipwr << (-1 - _t))) / (ie.ie_ipwr << -_t); } } while (0);
 do { int _t; _t = bwn_nbits(ie.ie_qpwr) - 11; if (_t >= 0) tmp[1] = (ie.ie_qpwr << (31 - bwn_nbits(ie.ie_qpwr))) / (ie.ie_ipwr >> _t); else tmp[1] = (ie.ie_qpwr << (31 - bwn_nbits(ie.ie_qpwr))) / (ie.ie_ipwr << -_t); } while (0);

 tmp[1] = -bwn_sqrt(mac, tmp[1] - (tmp[0] * tmp[0]));
 v0 = tmp[0] >> 3;
 v1 = tmp[1] >> 4;
done:
 BWN_PHY_SETMASK(mac, BWN_PHY_RX_COMP_COEFF_S, 0xff00, v1);
 BWN_PHY_SETMASK(mac, BWN_PHY_RX_COMP_COEFF_S, 0x00ff, v0 << 8);
 return ret;


}
