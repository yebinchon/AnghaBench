
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umouse_softc {scalar_t__ newdata; } ;



__attribute__((used)) static int
umouse_reset(void *scarg)
{
 struct umouse_softc *sc;

 sc = scarg;

 sc->newdata = 0;

 return (0);
}
