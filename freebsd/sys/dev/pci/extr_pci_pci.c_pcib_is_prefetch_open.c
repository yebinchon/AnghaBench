
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {scalar_t__ pmembase; scalar_t__ pmemlimit; } ;



__attribute__((used)) static int
pcib_is_prefetch_open(struct pcib_softc *sc)
{
 return (sc->pmembase > 0 && sc->pmembase < sc->pmemlimit);
}
