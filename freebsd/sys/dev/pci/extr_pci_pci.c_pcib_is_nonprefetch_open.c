
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {scalar_t__ membase; scalar_t__ memlimit; } ;



__attribute__((used)) static int
pcib_is_nonprefetch_open(struct pcib_softc *sc)
{
 return (sc->membase > 0 && sc->membase < sc->memlimit);
}
