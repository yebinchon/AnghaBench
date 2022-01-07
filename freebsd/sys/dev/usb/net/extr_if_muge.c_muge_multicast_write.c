
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct muge_softc {int ** sc_pfilter_table; int sc_mchash_table; } ;


 int ETH_DP_SEL_RSEL_VLAN_DA_ ;
 int ETH_DP_SEL_VHF_HASH_LEN ;
 int ETH_DP_SEL_VHF_VLAN_LEN ;
 int MUGE_NUM_PFILTER_ADDRS_ ;
 int PFILTER_HI (int) ;
 int PFILTER_LO (int) ;
 int lan78xx_dataport_write (struct muge_softc*,int ,int ,int ,int ) ;
 int lan78xx_write_reg (struct muge_softc*,int ,int ) ;

__attribute__((used)) static void
muge_multicast_write(struct muge_softc *sc)
{
 int i, ret;
 lan78xx_dataport_write(sc, ETH_DP_SEL_RSEL_VLAN_DA_,
     ETH_DP_SEL_VHF_VLAN_LEN, ETH_DP_SEL_VHF_HASH_LEN,
     sc->sc_mchash_table);

 for (i = 1; i < MUGE_NUM_PFILTER_ADDRS_; i++) {
  ret = lan78xx_write_reg(sc, PFILTER_HI(i), 0);
  ret = lan78xx_write_reg(sc, PFILTER_LO(i),
      sc->sc_pfilter_table[i][1]);
  ret = lan78xx_write_reg(sc, PFILTER_HI(i),
      sc->sc_pfilter_table[i][0]);
 }
}
