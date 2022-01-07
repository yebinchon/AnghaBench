
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct dc_softc {int dc_flags; } ;


 int DC_128BIT_HASH ;
 int DC_64BIT_HASH ;
 int DC_BITS_128 ;
 int DC_BITS_512 ;
 int DC_BITS_64 ;
 scalar_t__ DC_IS_XIRCOM (struct dc_softc*) ;
 int ETHER_ADDR_LEN ;
 int ether_crc32_le (int const*,int ) ;

__attribute__((used)) static uint32_t
dc_mchash_le(struct dc_softc *sc, const uint8_t *addr)
{
 uint32_t crc;


 crc = ether_crc32_le(addr, ETHER_ADDR_LEN);





 if (sc->dc_flags & DC_128BIT_HASH)
  return (crc & ((1 << DC_BITS_128) - 1));


 if (sc->dc_flags & DC_64BIT_HASH)
  return (crc & ((1 << DC_BITS_64) - 1));



 if (DC_IS_XIRCOM(sc)) {
  if ((crc & 0x180) == 0x180)
   return ((crc & 0x0F) + (crc & 0x70) * 3 + (14 << 4));
  else
   return ((crc & 0x1F) + ((crc >> 1) & 0xF0) * 3 +
       (12 << 4));
 }

 return (crc & ((1 << DC_BITS_512) - 1));
}
