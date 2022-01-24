#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bhnd_erom_io {int dummy; } ;
struct TYPE_2__ {struct bhnd_erom_io eio; } ;
struct bhndb_pci_probe {void* dev; int m_valid; int /*<<< orphan*/ * hr; int /*<<< orphan*/ * cores; int /*<<< orphan*/ * erom; int /*<<< orphan*/  hostb_core; int /*<<< orphan*/  ncores; int /*<<< orphan*/  cid; int /*<<< orphan*/ * erom_class; TYPE_1__ erom_io; int /*<<< orphan*/ * m_res; int /*<<< orphan*/ * m_win; void* pci_dev; } ;
struct bhndb_hwcfg {int dummy; } ;
struct bhnd_chipid {int dummy; } ;
typedef  void* device_t ;
typedef  int /*<<< orphan*/  bhnd_devclass_t ;

/* Variables and functions */
 struct bhnd_chipid* FUNC0 (void*,void*) ; 
 struct bhndb_hwcfg* FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  BHND_DEFAULT_CHIPC_ADDR ; 
 int /*<<< orphan*/  BHND_DEFAULT_CORE_SIZE ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_BHND ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bhnd_erom_io*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bhnd_erom_io*) ; 
 int FUNC8 (struct bhnd_erom_io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,struct bhnd_erom_io*,struct bhnd_chipid const*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ **,void*,void*,struct bhndb_hwcfg const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct bhndb_pci_probe*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 void* FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (void*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct bhndb_pci_probe*,int /*<<< orphan*/ ) ; 
 struct bhndb_pci_probe* FUNC18 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC19(struct bhndb_pci_probe **probe, device_t dev,
    bhnd_devclass_t hostb_devclass)
{
	struct bhndb_pci_probe		*p;
	struct bhnd_erom_io		*eio;
	const struct bhndb_hwcfg	*hwcfg;
	const struct bhnd_chipid	*hint;
	device_t			 parent_dev;
	int				 error;

	parent_dev = FUNC15(dev);
	eio = NULL;

	p = FUNC18(sizeof(*p), M_BHND, M_ZERO|M_WAITOK);
	p->dev = dev;
	p->pci_dev = parent_dev;

	/* Our register window mapping state must be initialized at this point,
	 * as bhndb_pci_eio will begin making calls into
	 * bhndb_pci_probe_(read|write|get_mapping) */
	p->m_win = NULL;
	p->m_res = NULL;
	p->m_valid = false;

	FUNC12(&p->erom_io, p);
	eio = &p->erom_io.eio;

	/* Fetch our chipid hint (if any) and generic hardware configuration */
	hwcfg = FUNC1(parent_dev, dev);
	hint = FUNC0(parent_dev, dev);

	/* Allocate our host resources */
	error = FUNC10(&p->hr, dev, parent_dev, hwcfg);
	if (error) {
		p->hr = NULL;
		goto failed;
	}

	/* Map the first bus core from our bridged bhnd(4) bus */
	error = FUNC8(eio, BHND_DEFAULT_CHIPC_ADDR,
	    BHND_DEFAULT_CORE_SIZE);
	if (error)
		goto failed;

	/* Probe for a usable EROM class, and read the chip identifier */
	p->erom_class = FUNC9(
	    FUNC14(dev), eio, hint, &p->cid);
	if (p->erom_class == NULL) {
		FUNC16(dev, "device enumeration unsupported; no "
		    "compatible driver found\n");

		error = ENXIO;
		goto failed;
	}

	/* Allocate EROM parser */
	p->erom = FUNC3(p->erom_class, &p->cid, eio);
	if (p->erom == NULL) {
		FUNC16(dev, "failed to allocate device enumeration "
		    "table parser\n");
		error = ENXIO;
		goto failed;
	}

	/* The EROM I/O instance is now owned by our EROM parser */
	eio = NULL;

	/* Read the full core table */
	error = FUNC6(p->erom, &p->cores, &p->ncores);
	if (error) {
		FUNC16(p->dev, "error fetching core table: %d\n",
		    error);

		p->cores = NULL;
		goto failed;
	}

	/* Identify the host bridge core */
	error = FUNC11(p->cores, p->ncores, hostb_devclass,
	    &p->hostb_core);
	if (error) {
		FUNC16(dev, "failed to identify the host bridge "
		    "core: %d\n", error);

		goto failed;
	}

	*probe = p;
	return (0);

failed:
	if (eio != NULL) {
		FUNC2(p->erom == NULL, ("I/O instance will be freed by "
		    "its owning parser"));

		FUNC7(eio);
	}

	if (p->erom != NULL) {
		if (p->cores != NULL)
			FUNC5(p->erom, p->cores);

		FUNC4(p->erom);
	} else {
		FUNC2(p->cores == NULL, ("cannot free erom-owned core table "
		    "without erom reference"));
	}

	if (p->hr != NULL)
		FUNC13(p->hr);

	FUNC17(p, M_BHND);

	return (error);
}