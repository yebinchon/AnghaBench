
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct udav_softc {int dummy; } ;


 int udav_csr_read (struct udav_softc*,int ,int *,int) ;

__attribute__((used)) static uint8_t
udav_csr_read1(struct udav_softc *sc, uint16_t offset)
{
 uint8_t val;

 udav_csr_read(sc, offset, &val, 1);
 return (val);
}
