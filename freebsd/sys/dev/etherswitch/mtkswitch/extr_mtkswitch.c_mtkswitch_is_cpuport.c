
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int cpuport; } ;



__attribute__((used)) static inline int
mtkswitch_is_cpuport(struct mtkswitch_softc *sc, int port)
{

 return (sc->cpuport == port);
}
