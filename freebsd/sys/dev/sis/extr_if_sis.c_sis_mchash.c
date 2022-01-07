
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sis_softc {scalar_t__ sis_type; scalar_t__ sis_rev; } ;


 int ETHER_ADDR_LEN ;
 scalar_t__ SIS_REV_635 ;
 scalar_t__ SIS_REV_900B ;
 scalar_t__ SIS_TYPE_83815 ;
 int ether_crc32_be (int const*,int ) ;

__attribute__((used)) static uint32_t
sis_mchash(struct sis_softc *sc, const uint8_t *addr)
{
 uint32_t crc;


 crc = ether_crc32_be(addr, ETHER_ADDR_LEN);







 if (sc->sis_type == SIS_TYPE_83815)
  return (crc >> 23);
 else if (sc->sis_rev >= SIS_REV_635 ||
     sc->sis_rev == SIS_REV_900B)
  return (crc >> 24);
 else
  return (crc >> 25);
}
