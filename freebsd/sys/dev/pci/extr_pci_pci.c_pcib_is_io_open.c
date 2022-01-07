
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcib_softc {scalar_t__ iobase; scalar_t__ iolimit; } ;



__attribute__((used)) static int
pcib_is_io_open(struct pcib_softc *sc)
{
 return (sc->iobase > 0 && sc->iobase < sc->iolimit);
}
