
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
 int CSR_READ_4 (struct sis_softc*,int ) ;
 int SIS_EECTL ;
 struct sis_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
sis_mii_bitbang_read(device_t dev)
{
 struct sis_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);

 val = CSR_READ_4(sc, SIS_EECTL);
 CSR_BARRIER(sc, SIS_EECTL, 4,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 return (val);
}
