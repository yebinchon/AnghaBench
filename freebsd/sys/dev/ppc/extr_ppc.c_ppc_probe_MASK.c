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
struct ppc_data {int rid_ioport; scalar_t__ res_ioport; int ppc_flags; scalar_t__ res_irq; int rid_irq; scalar_t__ res_drq; int rid_drq; int ppc_epp; int /*<<< orphan*/  ppc_type; int /*<<< orphan*/  ppc_mode; int /*<<< orphan*/  ppc_model; int /*<<< orphan*/  ppc_dev; void* ppc_dmachan; void* ppc_irq; void* ppc_base; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 short BIOS_MAX_PPC ; 
 scalar_t__* BIOS_PORTS ; 
 struct ppc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  IO_LPTSIZE_EXTENDED ; 
 int /*<<< orphan*/  IO_LPTSIZE_NORMAL ; 
 int /*<<< orphan*/  PPB_COMPATIBLE ; 
 int /*<<< orphan*/  PPC_TYPE_GENERIC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ bootverbose ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ppc_data*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (struct ppc_data*,int) ; 
 void* FUNC10 (scalar_t__) ; 

int
FUNC11(device_t dev, int rid)
{
#ifdef __i386__
	static short next_bios_ppc = 0;
#endif
	struct ppc_data *ppc;
	int error;
	rman_res_t port;

	/*
	 * Allocate the ppc_data structure.
	 */
	ppc = FUNC0(dev);
	FUNC6(ppc, sizeof(struct ppc_data));

	ppc->rid_ioport = rid;

	/* retrieve ISA parameters */
	error = FUNC3(dev, SYS_RES_IOPORT, rid, &port, NULL);

#ifdef __i386__
	/*
	 * If port not specified, use bios list.
	 */
	if (error) {
		if ((next_bios_ppc < BIOS_MAX_PPC) &&
		    (*(BIOS_PORTS + next_bios_ppc) != 0)) {
			port = *(BIOS_PORTS + next_bios_ppc++);
			if (bootverbose)
				device_printf(dev,
				    "parallel port found at 0x%jx\n", port);
		} else {
			device_printf(dev, "parallel port not found.\n");
			return (ENXIO);
		}
		bus_set_resource(dev, SYS_RES_IOPORT, rid, port,
				 IO_LPTSIZE_EXTENDED);
	}
#endif

	/* IO port is mandatory */

	/* Try "extended" IO port range...*/
	ppc->res_ioport = FUNC2(dev, SYS_RES_IOPORT,
						      &ppc->rid_ioport,
						      IO_LPTSIZE_EXTENDED,
						      RF_ACTIVE);

	if (ppc->res_ioport != 0) {
		if (bootverbose)
			FUNC8(dev, "using extended I/O port range\n");
	} else {
		/* Failed? If so, then try the "normal" IO port range... */
		 ppc->res_ioport = FUNC2(dev,
		 	 				       SYS_RES_IOPORT,
							       &ppc->rid_ioport,
							       IO_LPTSIZE_NORMAL,
							       RF_ACTIVE);
		if (ppc->res_ioport != 0) {
			if (bootverbose)
				FUNC8(dev, "using normal I/O port range\n");
		} else {
			if (bootverbose)
				FUNC8(dev, "cannot reserve I/O port range\n");
			goto error;
		}
	}

 	ppc->ppc_base = FUNC10(ppc->res_ioport);

	ppc->ppc_flags = FUNC7(dev);

	if (!(ppc->ppc_flags & 0x20)) {
		ppc->res_irq = FUNC1(dev, SYS_RES_IRQ,
						      &ppc->rid_irq,
						      RF_SHAREABLE);
		ppc->res_drq = FUNC1(dev, SYS_RES_DRQ,
						      &ppc->rid_drq,
						      RF_ACTIVE);
	}

	if (ppc->res_irq)
		ppc->ppc_irq = FUNC10(ppc->res_irq);
	if (ppc->res_drq)
		ppc->ppc_dmachan = FUNC10(ppc->res_drq);

	ppc->ppc_dev = dev;
	ppc->ppc_model = GENERIC;

	ppc->ppc_mode = PPB_COMPATIBLE;
	ppc->ppc_epp = (ppc->ppc_flags & 0x10) >> 4;

	ppc->ppc_type = PPC_TYPE_GENERIC;

	/*
	 * Try to detect the chipset and its mode.
	 */
	if (FUNC9(ppc, ppc->ppc_flags & 0xf))
		goto error;

	return (0);

error:
	if (ppc->res_irq != 0) {
		FUNC4(dev, SYS_RES_IRQ, ppc->rid_irq,
				     ppc->res_irq);
	}
	if (ppc->res_ioport != 0) {
		FUNC4(dev, SYS_RES_IOPORT, ppc->rid_ioport,
				     ppc->res_ioport);
	}
	if (ppc->res_drq != 0) {
		FUNC4(dev, SYS_RES_DRQ, ppc->rid_drq,
				     ppc->res_drq);
	}
	return (ENXIO);
}