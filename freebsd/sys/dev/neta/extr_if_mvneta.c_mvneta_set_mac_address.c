
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mvneta_softc {int dummy; } ;


 int MVNETA_MACAH ;
 int MVNETA_MACAL ;
 int MVNETA_WRITE (struct mvneta_softc*,int ,unsigned int) ;

__attribute__((used)) static int
mvneta_set_mac_address(struct mvneta_softc *sc, uint8_t *addr)
{
 unsigned int mac_h;
 unsigned int mac_l;

 mac_l = (addr[4] << 8) | (addr[5]);
 mac_h = (addr[0] << 24) | (addr[1] << 16) |
     (addr[2] << 8) | (addr[3] << 0);

 MVNETA_WRITE(sc, MVNETA_MACAL, mac_l);
 MVNETA_WRITE(sc, MVNETA_MACAH, mac_h);
 return (0);
}
