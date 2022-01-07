
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct twed_softc {TYPE_1__* twed_drive; scalar_t__ twed_controller; } ;
struct twe_softc {int dummy; } ;
struct disk {scalar_t__ d_drv1; } ;
typedef size_t off_t ;
struct TYPE_2__ {int td_twe_unit; } ;


 int ENXIO ;
 size_t TWE_BLOCK_SIZE ;
 int twe_dump_blocks (struct twe_softc*,int ,size_t,void*,size_t) ;

__attribute__((used)) static int
twed_dump(void *arg, void *virtual, vm_offset_t physical, off_t offset, size_t length)
{
    struct twed_softc *twed_sc;
    struct twe_softc *twe_sc;
    int error;
    struct disk *dp;

    dp = arg;
    twed_sc = (struct twed_softc *)dp->d_drv1;
    if (twed_sc == ((void*)0))
 return(ENXIO);
    twe_sc = (struct twe_softc *)twed_sc->twed_controller;

    if (length > 0) {
 if ((error = twe_dump_blocks(twe_sc, twed_sc->twed_drive->td_twe_unit, offset / TWE_BLOCK_SIZE, virtual, length / TWE_BLOCK_SIZE)) != 0)
     return(error);
    }
    return(0);
}
