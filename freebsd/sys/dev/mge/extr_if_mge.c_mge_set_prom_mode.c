
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct mge_softc {TYPE_1__* ifp; } ;
struct TYPE_2__ {int if_flags; } ;


 int IFF_PROMISC ;
 int MGE_DA_FILTER_OTH_MCAST (scalar_t__) ;
 int MGE_DA_FILTER_SPEC_MCAST (scalar_t__) ;
 int MGE_DA_FILTER_UCAST (scalar_t__) ;
 scalar_t__ MGE_MCAST_REG_NUMBER ;
 int MGE_PORT_CONFIG ;
 scalar_t__ MGE_READ (struct mge_softc*,int ) ;
 scalar_t__ MGE_UCAST_REG_NUMBER ;
 int MGE_WRITE (struct mge_softc*,int ,scalar_t__) ;
 scalar_t__ PORT_CONFIG_UPM ;
 int mge_set_mac_address (struct mge_softc*) ;

__attribute__((used)) static void
mge_set_prom_mode(struct mge_softc *sc, uint8_t queue)
{
 uint32_t port_config;
 uint32_t reg_val, i;


 if (sc->ifp->if_flags & IFF_PROMISC) {
  port_config = MGE_READ(sc, MGE_PORT_CONFIG);
  port_config |= PORT_CONFIG_UPM;
  MGE_WRITE(sc, MGE_PORT_CONFIG, port_config);

  reg_val = ((1 | (queue << 1)) | (1 | (queue << 1)) << 8 |
     (1 | (queue << 1)) << 16 | (1 | (queue << 1)) << 24);

  for (i = 0; i < MGE_MCAST_REG_NUMBER; i++) {
   MGE_WRITE(sc, MGE_DA_FILTER_SPEC_MCAST(i), reg_val);
   MGE_WRITE(sc, MGE_DA_FILTER_OTH_MCAST(i), reg_val);
  }

  for (i = 0; i < MGE_UCAST_REG_NUMBER; i++)
   MGE_WRITE(sc, MGE_DA_FILTER_UCAST(i), reg_val);

 } else {
  port_config = MGE_READ(sc, MGE_PORT_CONFIG);
  port_config &= ~PORT_CONFIG_UPM;
  MGE_WRITE(sc, MGE_PORT_CONFIG, port_config);

  for (i = 0; i < MGE_MCAST_REG_NUMBER; i++) {
   MGE_WRITE(sc, MGE_DA_FILTER_SPEC_MCAST(i), 0);
   MGE_WRITE(sc, MGE_DA_FILTER_OTH_MCAST(i), 0);
  }

  mge_set_mac_address(sc);
 }
}
