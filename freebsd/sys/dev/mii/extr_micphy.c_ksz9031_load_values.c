
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int dummy; } ;
typedef int phandle_t ;


 int MII_KSZ9031_CLOCK_PAD_SKEW ;
 int MII_KSZ9031_CONTROL_PAD_SKEW ;
 int MII_KSZ9031_RX_DATA_PAD_SKEW ;
 int MII_KSZ9031_TX_DATA_PAD_SKEW ;
 int ksz90x1_load_values (struct mii_softc*,int ,int,int ,char*,int,int ,char*,int,int,char*,int,int,char*,int,int) ;

__attribute__((used)) static void
ksz9031_load_values(struct mii_softc *sc, phandle_t node)
{

 ksz90x1_load_values(sc, node, 2, MII_KSZ9031_CONTROL_PAD_SKEW,
     "txen-skew-ps", 0xf, 0, "rxdv-skew-ps", 0xf, 4,
     ((void*)0), 0, 0, ((void*)0), 0, 0);
 ksz90x1_load_values(sc, node, 2, MII_KSZ9031_RX_DATA_PAD_SKEW,
     "rxd0-skew-ps", 0xf, 0, "rxd1-skew-ps", 0xf, 4,
     "rxd2-skew-ps", 0xf, 8, "rxd3-skew-ps", 0xf, 12);
 ksz90x1_load_values(sc, node, 2, MII_KSZ9031_TX_DATA_PAD_SKEW,
     "txd0-skew-ps", 0xf, 0, "txd1-skew-ps", 0xf, 4,
     "txd2-skew-ps", 0xf, 8, "txd3-skew-ps", 0xf, 12);
 ksz90x1_load_values(sc, node, 2, MII_KSZ9031_CLOCK_PAD_SKEW,
     "rxc-skew-ps", 0x1f, 0, "txc-skew-ps", 0x1f, 5,
     ((void*)0), 0, 0, ((void*)0), 0, 0);
}
