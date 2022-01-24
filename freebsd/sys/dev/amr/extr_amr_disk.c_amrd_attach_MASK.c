#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct amrd_softc {TYPE_1__* amrd_disk; TYPE_3__* amrd_drive; int /*<<< orphan*/  amrd_unit; int /*<<< orphan*/  amrd_dev; struct amr_softc* amrd_controller; } ;
struct amr_softc {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  dumper_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int al_size; int al_properties; int /*<<< orphan*/  al_heads; int /*<<< orphan*/  al_sectors; int /*<<< orphan*/  al_state; } ;
struct TYPE_4__ {int d_maxsize; char* d_name; int d_sectorsize; int d_mediasize; int /*<<< orphan*/  d_fwheads; int /*<<< orphan*/  d_fwsectors; int /*<<< orphan*/  d_flags; int /*<<< orphan*/  d_unit; int /*<<< orphan*/ * d_dump; int /*<<< orphan*/  d_strategy; int /*<<< orphan*/  d_open; struct amrd_softc* d_drv1; } ;

/* Variables and functions */
 int AMR_BLKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int AMR_DRV_RAID_MASK ; 
 int AMR_NSEG ; 
 int /*<<< orphan*/  DISKFLAG_CANFLUSHCACHE ; 
 int /*<<< orphan*/  DISK_VERSION ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amr_table_drvstate ; 
 scalar_t__ amrd_dump ; 
 int /*<<< orphan*/  amrd_open ; 
 int /*<<< orphan*/  amrd_strategy ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
    struct amrd_softc	*sc = (struct amrd_softc *)FUNC5(dev);
    device_t		parent;
    
    FUNC2(1);

    parent = FUNC4(dev);
    sc->amrd_controller = (struct amr_softc *)FUNC5(parent);
    sc->amrd_unit = FUNC6(dev);
    sc->amrd_drive = FUNC3(dev);
    sc->amrd_dev = dev;

    FUNC7(dev, "%uMB (%u sectors) RAID %d (%s)\n",
		  sc->amrd_drive->al_size / ((1024 * 1024) / AMR_BLKSIZE),
		  sc->amrd_drive->al_size, sc->amrd_drive->al_properties & AMR_DRV_RAID_MASK, 
		  FUNC1(amr_table_drvstate, FUNC0(sc->amrd_drive->al_state)));

    sc->amrd_disk = FUNC8();
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
    FUNC9(sc->amrd_disk, DISK_VERSION);

    return (0);
}