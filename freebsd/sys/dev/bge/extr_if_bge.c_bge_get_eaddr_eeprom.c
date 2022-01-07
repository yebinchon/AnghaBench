
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bge_softc {scalar_t__ bge_asicrev; } ;


 scalar_t__ BGE_ASICREV_BCM5906 ;
 scalar_t__ BGE_EE_MAC_OFFSET ;
 int ETHER_ADDR_LEN ;
 int bge_read_eeprom (struct bge_softc*,int *,scalar_t__,int ) ;

__attribute__((used)) static int
bge_get_eaddr_eeprom(struct bge_softc *sc, uint8_t ether_addr[])
{

 if (sc->bge_asicrev == BGE_ASICREV_BCM5906)
  return (1);

 return (bge_read_eeprom(sc, ether_addr, BGE_EE_MAC_OFFSET + 2,
    ETHER_ADDR_LEN));
}
