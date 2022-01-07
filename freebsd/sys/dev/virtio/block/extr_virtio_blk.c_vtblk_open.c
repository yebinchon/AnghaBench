
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_flags; } ;
struct disk {struct vtblk_softc* d_drv1; } ;


 int ENXIO ;
 int VTBLK_FLAG_DETACH ;

__attribute__((used)) static int
vtblk_open(struct disk *dp)
{
 struct vtblk_softc *sc;

 if ((sc = dp->d_drv1) == ((void*)0))
  return (ENXIO);

 return (sc->vtblk_flags & VTBLK_FLAG_DETACH ? ENXIO : 0);
}
