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
struct mlx_softc {int mlx_iftype; int /*<<< orphan*/  mlx_parent_dmat; int /*<<< orphan*/  mlx_dev; int /*<<< orphan*/ * mlx_mem; void* mlx_mem_rid; void* mlx_mem_type; int /*<<< orphan*/  mlx_io_lock; int /*<<< orphan*/  mlx_timeout; int /*<<< orphan*/  mlx_config_lock; } ;
struct mlx_ident {int iftype; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int ENOMEM ; 
 int ENXIO ; 
 void* MLX_CFG_BASE0 ; 
 void* MLX_CFG_BASE1 ; 
#define  MLX_IFTYPE_2 131 
#define  MLX_IFTYPE_3 130 
#define  MLX_IFTYPE_4 129 
#define  MLX_IFTYPE_5 128 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 void* SYS_RES_IOPORT ; 
 void* SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,void**,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct mlx_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx_softc*) ; 
 struct mlx_ident* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
    struct mlx_softc	*sc;
    struct mlx_ident	*m;
    int			error;

    FUNC4(1);

    FUNC12(dev);

    sc = FUNC5(dev);
    sc->mlx_dev = dev;

    /*
     * Work out what sort of adapter this is (we need to know this in order
     * to map the appropriate interface resources).
     */
    m = FUNC9(dev);
    if (m == NULL)		/* shouldn't happen */
	return(ENXIO);
    sc->mlx_iftype = m->iftype;

    FUNC11(&sc->mlx_io_lock, "mlx I/O", NULL, MTX_DEF);
    FUNC13(&sc->mlx_config_lock, "mlx config");
    FUNC3(&sc->mlx_timeout, &sc->mlx_io_lock, 0);

    /*
     * Allocate the PCI register window.
     */
    
    /* type 2/3 adapters have an I/O region we don't prefer at base 0 */
    switch(sc->mlx_iftype) {
    case MLX_IFTYPE_2:
    case MLX_IFTYPE_3:
	sc->mlx_mem_type = SYS_RES_MEMORY;
	sc->mlx_mem_rid = MLX_CFG_BASE1;
	sc->mlx_mem = FUNC0(dev, sc->mlx_mem_type,
		&sc->mlx_mem_rid, RF_ACTIVE);
	if (sc->mlx_mem == NULL) {
	    sc->mlx_mem_type = SYS_RES_IOPORT;
	    sc->mlx_mem_rid = MLX_CFG_BASE0;
	    sc->mlx_mem = FUNC0(dev, sc->mlx_mem_type,
		&sc->mlx_mem_rid, RF_ACTIVE);
	}
	break;
    case MLX_IFTYPE_4:
    case MLX_IFTYPE_5:
	sc->mlx_mem_type = SYS_RES_MEMORY;
	sc->mlx_mem_rid = MLX_CFG_BASE0;
	sc->mlx_mem = FUNC0(dev, sc->mlx_mem_type,
		&sc->mlx_mem_rid, RF_ACTIVE);
	break;
    }
    if (sc->mlx_mem == NULL) {
	FUNC6(sc->mlx_dev, "couldn't allocate mailbox window\n");
	FUNC8(sc);
	return(ENXIO);
    }

    /*
     * Allocate the parent bus DMA tag appropriate for PCI.
     */
    error = FUNC1(FUNC2(dev),	/* PCI parent */
			       1, 0, 			/* alignment, boundary */
			       BUS_SPACE_MAXADDR_32BIT, /* lowaddr */
			       BUS_SPACE_MAXADDR, 	/* highaddr */
			       NULL, NULL, 		/* filter, filterarg */
			       BUS_SPACE_MAXSIZE_32BIT, /* maxsize */
			       BUS_SPACE_UNRESTRICTED,	/* nsegments */
			       BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			       BUS_DMA_ALLOCNOW,	/* flags */
			       NULL,			/* lockfunc */
			       NULL,			/* lockarg */
			       &sc->mlx_parent_dmat);
    if (error != 0) {
	FUNC6(dev, "can't allocate parent DMA tag\n");
	FUNC8(sc);
	return(ENOMEM);
    }

    /*
     * Do bus-independant initialisation.
     */
    error = FUNC7(sc);
    if (error != 0) {
	FUNC8(sc);
	return(error);
    }
    
    /*
     * Start the controller.
     */
    FUNC10(sc);
    return(0);
}