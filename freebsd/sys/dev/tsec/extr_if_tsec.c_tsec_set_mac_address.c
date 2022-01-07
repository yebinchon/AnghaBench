
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tsec_softc {int tsec_ifp; } ;
typedef int macbuf ;


 int ETHER_ADDR_LEN ;
 scalar_t__ IF_LLADDR (int ) ;
 int KASSERT (int,char*) ;
 int TSEC_GLOBAL_LOCK_ASSERT (struct tsec_softc*) ;
 int TSEC_REG_MACSTNADDR1 ;
 int TSEC_REG_MACSTNADDR2 ;
 int TSEC_WRITE (struct tsec_softc*,int ,int ) ;

__attribute__((used)) static void
tsec_set_mac_address(struct tsec_softc *sc)
{
 uint32_t macbuf[2] = { 0, 0 };
 char *macbufp, *curmac;
 int i;

 TSEC_GLOBAL_LOCK_ASSERT(sc);

 KASSERT((ETHER_ADDR_LEN <= sizeof(macbuf)),
     ("tsec_set_mac_address: (%d <= %zd", ETHER_ADDR_LEN,
     sizeof(macbuf)));

 macbufp = (char *)macbuf;
 curmac = (char *)IF_LLADDR(sc->tsec_ifp);


 for (i = 1; i <= ETHER_ADDR_LEN; i++)
  macbufp[ETHER_ADDR_LEN-i] = curmac[i-1];


 TSEC_WRITE(sc, TSEC_REG_MACSTNADDR2, macbuf[1]);
 TSEC_WRITE(sc, TSEC_REG_MACSTNADDR1, macbuf[0]);
}
