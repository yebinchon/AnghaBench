
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nge_softc {int dummy; } ;
typedef int device_t ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int CSR_BARRIER_4 (struct nge_softc*,int ,int) ;
 int CSR_WRITE_4 (struct nge_softc*,int ,int ) ;
 int NGE_MEAR ;
 struct nge_softc* device_get_softc (int ) ;

__attribute__((used)) static void
nge_mii_bitbang_write(device_t dev, uint32_t val)
{
 struct nge_softc *sc;

 sc = device_get_softc(dev);

 CSR_WRITE_4(sc, NGE_MEAR, val);
 CSR_BARRIER_4(sc, NGE_MEAR,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}
