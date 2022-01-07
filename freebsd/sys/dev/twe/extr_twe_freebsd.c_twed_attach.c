
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct twed_softc {TYPE_1__* twed_disk; TYPE_3__* twed_drive; int twed_dev; struct twe_softc* twed_controller; } ;
struct twe_softc {int dummy; } ;
typedef int off_t ;
typedef int dumper_t ;
typedef int device_t ;
struct TYPE_5__ {int td_size; scalar_t__ td_type; int td_stripe; int td_sys_unit; int td_heads; int td_sectors; } ;
struct TYPE_4__ {char* d_name; int d_maxsize; int d_sectorsize; int d_mediasize; int d_stripesize; int d_unit; int d_fwheads; int d_fwsectors; scalar_t__ d_stripeoffset; struct twed_softc* d_drv1; int * d_dump; int d_strategy; int d_open; } ;


 int DISK_VERSION ;
 int PAGE_SIZE ;
 int TWE_BLOCK_SIZE ;
 int TWE_MAX_SGL_LENGTH ;
 scalar_t__ TWE_UD_CONFIG_RAID0 ;
 scalar_t__ TWE_UD_CONFIG_RAID10 ;
 scalar_t__ TWE_UD_CONFIG_RAID5 ;
 int debug_called (int) ;
 TYPE_3__* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct twed_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 TYPE_1__* disk_alloc () ;
 int disk_create (TYPE_1__*,int ) ;
 scalar_t__ twed_dump ;
 int twed_open ;
 int twed_printf (struct twed_softc*,char*,int,int) ;
 int twed_strategy ;

__attribute__((used)) static int
twed_attach(device_t dev)
{
    struct twed_softc *sc;
    device_t parent;

    debug_called(4);


    sc = device_get_softc(dev);
    parent = device_get_parent(dev);
    sc->twed_controller = (struct twe_softc *)device_get_softc(parent);
    sc->twed_drive = device_get_ivars(dev);
    sc->twed_dev = dev;


    twed_printf(sc, "%uMB (%u sectors)\n",
  sc->twed_drive->td_size / ((1024 * 1024) / TWE_BLOCK_SIZE),
  sc->twed_drive->td_size);



    sc->twed_drive->td_sys_unit = device_get_unit(dev);

    sc->twed_disk = disk_alloc();
    sc->twed_disk->d_open = twed_open;
    sc->twed_disk->d_strategy = twed_strategy;
    sc->twed_disk->d_dump = (dumper_t *)twed_dump;
    sc->twed_disk->d_name = "twed";
    sc->twed_disk->d_drv1 = sc;
    sc->twed_disk->d_maxsize = (TWE_MAX_SGL_LENGTH - 1) * PAGE_SIZE;
    sc->twed_disk->d_sectorsize = TWE_BLOCK_SIZE;
    sc->twed_disk->d_mediasize = TWE_BLOCK_SIZE * (off_t)sc->twed_drive->td_size;
    if (sc->twed_drive->td_type == TWE_UD_CONFIG_RAID0 ||
 sc->twed_drive->td_type == TWE_UD_CONFIG_RAID5 ||
 sc->twed_drive->td_type == TWE_UD_CONFIG_RAID10) {
     sc->twed_disk->d_stripesize =
  TWE_BLOCK_SIZE << sc->twed_drive->td_stripe;
     sc->twed_disk->d_stripeoffset = 0;
    }
    sc->twed_disk->d_fwsectors = sc->twed_drive->td_sectors;
    sc->twed_disk->d_fwheads = sc->twed_drive->td_heads;
    sc->twed_disk->d_unit = sc->twed_drive->td_sys_unit;

    disk_create(sc->twed_disk, DISK_VERSION);



    return (0);
}
