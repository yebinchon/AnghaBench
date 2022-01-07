
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
 int CSR_WRITE_2 (struct xl_softc*,int ,int ) ;
 int XL_W4_PHY_MGMT ;
 struct xl_softc* device_get_softc (int ) ;

__attribute__((used)) static void
xl_mii_bitbang_write(device_t dev, uint32_t val)
{
 struct xl_softc *sc;

 sc = device_get_softc(dev);


 CSR_WRITE_2(sc, XL_W4_PHY_MGMT, val);
 CSR_BARRIER(sc, XL_W4_PHY_MGMT, 2,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}
