
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct jedec_dimm_softc {int tsod_addr; int smbus; } ;


 int be16toh (int ) ;
 int smbus_readw (int ,int ,int ,int *) ;

__attribute__((used)) static int
jedec_dimm_readw_be(struct jedec_dimm_softc *sc, uint8_t reg, uint16_t *val)
{
 int rc;

 rc = smbus_readw(sc->smbus, sc->tsod_addr, reg, val);
 if (rc != 0) {
  goto out;
 }
 *val = be16toh(*val);

out:
 return (rc);
}
