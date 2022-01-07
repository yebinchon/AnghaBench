
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct vtblk_softc {int dummy; } ;
struct disk {struct vtblk_softc* d_drv1; } ;
typedef scalar_t__ off_t ;


 int ENXIO ;
 int VTBLK_LOCK (struct vtblk_softc*) ;
 int VTBLK_UNLOCK (struct vtblk_softc*) ;
 int vtblk_dump_complete (struct vtblk_softc*) ;
 int vtblk_dump_quiesce (struct vtblk_softc*) ;
 int vtblk_dump_write (struct vtblk_softc*,void*,scalar_t__,size_t) ;

__attribute__((used)) static int
vtblk_dump(void *arg, void *virtual, vm_offset_t physical, off_t offset,
    size_t length)
{
 struct disk *dp;
 struct vtblk_softc *sc;
 int error;

 dp = arg;
 error = 0;

 if ((sc = dp->d_drv1) == ((void*)0))
  return (ENXIO);

 VTBLK_LOCK(sc);

 vtblk_dump_quiesce(sc);

 if (length > 0)
  error = vtblk_dump_write(sc, virtual, offset, length);
 if (error || (virtual == ((void*)0) && offset == 0))
  vtblk_dump_complete(sc);

 VTBLK_UNLOCK(sc);

 return (error);
}
