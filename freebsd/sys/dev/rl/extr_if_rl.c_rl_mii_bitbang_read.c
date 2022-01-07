
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rl_softc {int dummy; } ;
typedef int device_t ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int CSR_BARRIER (struct rl_softc*,int ,int,int) ;
 int CSR_READ_1 (struct rl_softc*,int ) ;
 int RL_MII ;
 struct rl_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
rl_mii_bitbang_read(device_t dev)
{
 struct rl_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);

 val = CSR_READ_1(sc, RL_MII);
 CSR_BARRIER(sc, RL_MII, 1,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);

 return (val);
}
