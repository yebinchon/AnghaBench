
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_softc {int dummy; } ;
typedef int device_t ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int CSR_BARRIER_4 (struct dc_softc*,int ,int) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int ) ;
 int DC_SIO ;
 struct dc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
dc_mii_bitbang_write(device_t dev, uint32_t val)
{
 struct dc_softc *sc;

 sc = device_get_softc(dev);

 CSR_WRITE_4(sc, DC_SIO, val);
 CSR_BARRIER_4(sc, DC_SIO,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}
