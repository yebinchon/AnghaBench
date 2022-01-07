
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sis_softc {int dummy; } ;
typedef int device_t ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int CSR_BARRIER (struct sis_softc*,int ,int,int) ;
 int CSR_WRITE_4 (struct sis_softc*,int ,int ) ;
 int SIS_EECTL ;
 struct sis_softc* device_get_softc (int ) ;

__attribute__((used)) static void
sis_mii_bitbang_write(device_t dev, uint32_t val)
{
 struct sis_softc *sc;

 sc = device_get_softc(dev);

 CSR_WRITE_4(sc, SIS_EECTL, val);
 CSR_BARRIER(sc, SIS_EECTL, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}
