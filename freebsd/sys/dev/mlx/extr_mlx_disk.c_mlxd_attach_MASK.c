#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlxd_softc {TYPE_2__* mlxd_disk; struct mlx_softc* mlxd_controller; TYPE_4__* mlxd_drive; int /*<<< orphan*/  mlxd_unit; int /*<<< orphan*/  mlxd_dev; } ;
struct mlx_softc {scalar_t__ mlx_iftype; TYPE_1__* mlx_enq2; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {int ms_state; int ms_size; int /*<<< orphan*/  ms_heads; int /*<<< orphan*/  ms_sectors; int /*<<< orphan*/  ms_raidlevel; } ;
struct TYPE_6__ {char* d_name; int d_sectorsize; int d_mediasize; int d_maxsize; int /*<<< orphan*/  d_fwheads; int /*<<< orphan*/  d_fwsectors; struct mlxd_softc* d_drv1; int /*<<< orphan*/  d_unit; int /*<<< orphan*/  d_strategy; int /*<<< orphan*/  d_ioctl; int /*<<< orphan*/  d_close; int /*<<< orphan*/  d_open; } ;
struct TYPE_5__ {int me_maxblk; int me_max_sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISK_VERSION ; 
 int MLX_BLKSIZE ; 
 scalar_t__ MLX_IFTYPE_2 ; 
 int MLX_PAGE_SIZE ; 
#define  MLX_SYSD_CRITICAL 130 
#define  MLX_SYSD_OFFLINE 129 
#define  MLX_SYSD_ONLINE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  mlxd_close ; 
 int /*<<< orphan*/  mlxd_ioctl ; 
 int /*<<< orphan*/  mlxd_open ; 
 int /*<<< orphan*/  mlxd_strategy ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
    struct mlxd_softc	*sc = (struct mlxd_softc *)FUNC3(dev);
    device_t		parent;
    char		*state;
    int			s1, s2;
    
    FUNC0(1);

    parent = FUNC2(dev);
    sc->mlxd_controller = (struct mlx_softc *)FUNC3(parent);
    sc->mlxd_unit = FUNC4(dev);
    sc->mlxd_drive = FUNC1(dev);
    sc->mlxd_dev = dev;

    switch(sc->mlxd_drive->ms_state) {
    case MLX_SYSD_ONLINE:
	state = "online";
	break;
    case MLX_SYSD_CRITICAL:
	state = "critical";
	break;
    case MLX_SYSD_OFFLINE:
	state = "offline";
	break;
    default:
	state = "unknown state";
    }

    FUNC5(dev, "%uMB (%u sectors) RAID %d (%s)\n",
		  sc->mlxd_drive->ms_size / ((1024 * 1024) / MLX_BLKSIZE),
		  sc->mlxd_drive->ms_size, sc->mlxd_drive->ms_raidlevel, state);

    sc->mlxd_disk = FUNC6();
    sc->mlxd_disk->d_open = mlxd_open;
    sc->mlxd_disk->d_close = mlxd_close;
    sc->mlxd_disk->d_ioctl = mlxd_ioctl;
    sc->mlxd_disk->d_strategy = mlxd_strategy;
    sc->mlxd_disk->d_name = "mlxd";
    sc->mlxd_disk->d_unit = sc->mlxd_unit;
    sc->mlxd_disk->d_drv1 = sc;
    sc->mlxd_disk->d_sectorsize = MLX_BLKSIZE;
    sc->mlxd_disk->d_mediasize = MLX_BLKSIZE * (off_t)sc->mlxd_drive->ms_size;
    sc->mlxd_disk->d_fwsectors = sc->mlxd_drive->ms_sectors;
    sc->mlxd_disk->d_fwheads = sc->mlxd_drive->ms_heads;

    /* 
     * Set maximum I/O size to the lesser of the recommended maximum and the practical
     * maximum except on v2 cards where the maximum is set to 8 pages.
     */
    if (sc->mlxd_controller->mlx_iftype == MLX_IFTYPE_2)
	sc->mlxd_disk->d_maxsize = 8 * MLX_PAGE_SIZE;
    else {
	s1 = sc->mlxd_controller->mlx_enq2->me_maxblk * MLX_BLKSIZE;
	s2 = (sc->mlxd_controller->mlx_enq2->me_max_sg - 1) * MLX_PAGE_SIZE;
	sc->mlxd_disk->d_maxsize = FUNC8(s1, s2);
    }

    FUNC7(sc->mlxd_disk, DISK_VERSION);

    return (0);
}