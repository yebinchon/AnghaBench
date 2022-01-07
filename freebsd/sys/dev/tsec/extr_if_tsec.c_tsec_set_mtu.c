
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {int dummy; } ;


 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int TSEC_GLOBAL_LOCK_ASSERT (struct tsec_softc*) ;
 unsigned int TSEC_MAX_FRAME_SIZE ;
 unsigned int TSEC_MIN_FRAME_SIZE ;
 int TSEC_REG_MAXFRM ;
 int TSEC_WRITE (struct tsec_softc*,int ,unsigned int) ;

__attribute__((used)) static int
tsec_set_mtu(struct tsec_softc *sc, unsigned int mtu)
{

 mtu += ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN + ETHER_CRC_LEN;

 TSEC_GLOBAL_LOCK_ASSERT(sc);

 if (mtu >= TSEC_MIN_FRAME_SIZE && mtu <= TSEC_MAX_FRAME_SIZE) {
  TSEC_WRITE(sc, TSEC_REG_MAXFRM, mtu);
  return (mtu);
 }

 return (0);
}
