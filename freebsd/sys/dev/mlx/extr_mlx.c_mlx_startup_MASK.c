#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx_sysdrive {scalar_t__ ms_disk; int ms_size; int ms_raidlevel; int ms_heads; int ms_sectors; int ms_cylinders; int /*<<< orphan*/  ms_state; } ;
struct mlx_softc {scalar_t__ mlx_geom; int /*<<< orphan*/  (* mlx_intaction ) (struct mlx_softc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mlx_state; int /*<<< orphan*/  mlx_dev; struct mlx_sysdrive* mlx_sysdrive; } ;
struct mlx_enq_sys_drive {int sd_size; int sd_raidlevel; int /*<<< orphan*/  sd_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX_CMD_ENQSYSDRIVE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*) ; 
 scalar_t__ MLX_GEOM_128_32 ; 
 int /*<<< orphan*/  MLX_INTACTION_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx_softc*) ; 
 int MLX_MAXDRIVES ; 
 int /*<<< orphan*/  MLX_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct mlx_sysdrive*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx_enq_sys_drive*,int /*<<< orphan*/ ) ; 
 struct mlx_enq_sys_drive* FUNC10 (struct mlx_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx_softc*,int /*<<< orphan*/ ) ; 

void
FUNC12(struct mlx_softc *sc)
{
    struct mlx_enq_sys_drive	*mes;
    struct mlx_sysdrive		*dr;
    int				i, error;

    FUNC5(1);
    
    /*
     * Scan all the system drives and attach children for those that
     * don't currently have them.
     */
    FUNC2(sc);
    mes = FUNC10(sc, MLX_CMD_ENQSYSDRIVE, sizeof(*mes) * MLX_MAXDRIVES, NULL);
    FUNC3(sc);
    if (mes == NULL) {
	FUNC7(sc->mlx_dev, "error fetching drive status\n");
	return;
    }
    
    /* iterate over drives returned */
    FUNC0(sc);
    for (i = 0, dr = &sc->mlx_sysdrive[0];
	 (i < MLX_MAXDRIVES) && (mes[i].sd_size != 0xffffffff);
	 i++, dr++) {
	/* are we already attached to this drive? */
    	if (dr->ms_disk == 0) {
	    /* pick up drive information */
	    dr->ms_size = mes[i].sd_size;
	    dr->ms_raidlevel = mes[i].sd_raidlevel & 0xf;
	    dr->ms_state = mes[i].sd_state;

	    /* generate geometry information */
	    if (sc->mlx_geom == MLX_GEOM_128_32) {
		dr->ms_heads = 128;
		dr->ms_sectors = 32;
		dr->ms_cylinders = dr->ms_size / (128 * 32);
	    } else {        /* MLX_GEOM_255/63 */
		dr->ms_heads = 255;
		dr->ms_sectors = 63;
		dr->ms_cylinders = dr->ms_size / (255 * 63);
	    }
	    dr->ms_disk =  FUNC6(sc->mlx_dev, /*"mlxd"*/NULL, -1);
	    if (dr->ms_disk == 0)
		FUNC7(sc->mlx_dev, "device_add_child failed\n");
	    FUNC8(dr->ms_disk, dr);
	}
    }
    FUNC9(mes, M_DEVBUF);
    if ((error = FUNC4(sc->mlx_dev)) != 0)
	FUNC7(sc->mlx_dev, "bus_generic_attach returned %d", error);

    /* mark controller back up */
    FUNC2(sc);
    sc->mlx_state &= ~MLX_STATE_SHUTDOWN;

    /* enable interrupts */
    sc->mlx_intaction(sc, MLX_INTACTION_ENABLE);
    FUNC3(sc);
    FUNC1(sc);
}