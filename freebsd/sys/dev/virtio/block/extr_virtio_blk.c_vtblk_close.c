
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int dummy; } ;
struct disk {struct vtblk_softc* d_drv1; } ;


 int ENXIO ;

__attribute__((used)) static int
vtblk_close(struct disk *dp)
{
 struct vtblk_softc *sc;

 if ((sc = dp->d_drv1) == ((void*)0))
  return (ENXIO);

 return (0);
}
