
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amrd_softc {TYPE_1__* amrd_disk; TYPE_3__* amrd_drive; int amrd_unit; int amrd_dev; struct amr_softc* amrd_controller; } ;
struct amr_softc {int dummy; } ;
typedef int off_t ;
typedef int dumper_t ;
typedef int device_t ;
struct TYPE_5__ {int al_size; int al_properties; int al_heads; int al_sectors; int al_state; } ;
struct TYPE_4__ {int d_maxsize; char* d_name; int d_sectorsize; int d_mediasize; int d_fwheads; int d_fwsectors; int d_flags; int d_unit; int * d_dump; int d_strategy; int d_open; struct amrd_softc* d_drv1; } ;


 int AMR_BLKSIZE ;
 int AMR_DRV_CURSTATE (int ) ;
 int AMR_DRV_RAID_MASK ;
 int AMR_NSEG ;
 int DISKFLAG_CANFLUSHCACHE ;
 int DISK_VERSION ;
 int PAGE_SIZE ;
 int amr_describe_code (int ,int ) ;
 int amr_table_drvstate ;
 scalar_t__ amrd_dump ;
 int amrd_open ;
 int amrd_strategy ;
 int debug_called (int) ;
 TYPE_3__* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int,int,int,int ) ;
 TYPE_1__* disk_alloc () ;
 int disk_create (TYPE_1__*,int ) ;

__attribute__((used)) static int
amrd_attach(device_t dev)
{
    struct amrd_softc *sc = (struct amrd_softc *)device_get_softc(dev);
    device_t parent;

    debug_called(1);

    parent = device_get_parent(dev);
    sc->amrd_controller = (struct amr_softc *)device_get_softc(parent);
    sc->amrd_unit = device_get_unit(dev);
    sc->amrd_drive = device_get_ivars(dev);
    sc->amrd_dev = dev;

    device_printf(dev, "%uMB (%u sectors) RAID %d (%s)\n",
    sc->amrd_drive->al_size / ((1024 * 1024) / AMR_BLKSIZE),
    sc->amrd_drive->al_size, sc->amrd_drive->al_properties & AMR_DRV_RAID_MASK,
    amr_describe_code(amr_table_drvstate, AMR_DRV_CURSTATE(sc->amrd_drive->al_state)));

    sc->amrd_disk = disk_alloc();
    sc->amrd_disk->d_drv1 = sc;
    sc->amrd_disk->d_maxsize = (AMR_NSEG - 1) * PAGE_SIZE;
    sc->amrd_disk->d_open = amrd_open;
    sc->amrd_disk->d_strategy = amrd_strategy;
    sc->amrd_disk->d_name = "amrd";
    sc->amrd_disk->d_dump = (dumper_t *)amrd_dump;
    sc->amrd_disk->d_unit = sc->amrd_unit;
    sc->amrd_disk->d_flags = DISKFLAG_CANFLUSHCACHE;
    sc->amrd_disk->d_sectorsize = AMR_BLKSIZE;
    sc->amrd_disk->d_mediasize = (off_t)sc->amrd_drive->al_size * AMR_BLKSIZE;
    sc->amrd_disk->d_fwsectors = sc->amrd_drive->al_sectors;
    sc->amrd_disk->d_fwheads = sc->amrd_drive->al_heads;
    disk_create(sc->amrd_disk, DISK_VERSION);

    return (0);
}
