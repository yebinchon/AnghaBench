
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dfs_softc {int dfs4; int dev; } ;
typedef int device_t ;


 int MPC7448 ;
 int cpufreq_register (int ) ;
 struct dfs_softc* device_get_softc (int ) ;
 int mfpvr () ;

__attribute__((used)) static int
dfs_attach(device_t dev)
{
 struct dfs_softc *sc;
 uint16_t vers;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->dfs4 = 0;
 vers = mfpvr() >> 16;


 if (vers == MPC7448)
  sc->dfs4 = 1;

 cpufreq_register(dev);
 return (0);
}
