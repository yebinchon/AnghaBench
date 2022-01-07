
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xl_softc {int dummy; } ;
typedef int device_t ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int CSR_BARRIER (struct xl_softc*,int ,int,int) ;
 int CSR_READ_2 (struct xl_softc*,int ) ;
 int XL_W4_PHY_MGMT ;
 struct xl_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
xl_mii_bitbang_read(device_t dev)
{
 struct xl_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);


 val = CSR_READ_2(sc, XL_W4_PHY_MGMT);
 CSR_BARRIER(sc, XL_W4_PHY_MGMT, 2,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);

 return (val);
}
