
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;
typedef int bwn_txpwr_result_t ;


 int BWN_TXPWR_RES_DONE ;
 int bwn_nphy_op_recalc_txpower (struct bwn_mac*,int) ;

bwn_txpwr_result_t
bwn_phy_n_recalc_txpwr(struct bwn_mac *mac, int ignore_tssi)
{



 return (BWN_TXPWR_RES_DONE);

}
