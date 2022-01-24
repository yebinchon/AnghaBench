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
typedef  int uintmax_t ;
struct bhndb_hwcfg {struct bhndb_host_resources* resource_specs; struct bhnd_dma_translation* dma_translations; } ;
struct bhndb_host_resources {size_t num_dma_tags; int type; struct bhndb_host_resources* dma_tags; struct bhndb_host_resources* resources; struct bhndb_host_resources* resource_specs; int /*<<< orphan*/  owner; struct bhndb_hwcfg const* cfg; } ;
struct bhnd_dma_translation {int base_addr; int addr_mask; int addrext_mask; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_dma_translation const*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_BHND ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bhnd_dma_translation*,struct bhndb_host_resources*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct bhndb_host_resources*,struct bhndb_host_resources*) ; 
 int /*<<< orphan*/  FUNC3 (struct bhndb_host_resources) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bhndb_host_resources*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ,int) ; 

int
FUNC9(struct bhndb_host_resources **resources,
    device_t dev, device_t parent_dev, const struct bhndb_hwcfg *hwcfg)
{
	struct bhndb_host_resources		*hr;
	const struct bhnd_dma_translation	*dt;
	bus_dma_tag_t				 parent_dmat;
	size_t					 nres, ndt;
	int					 error;

	parent_dmat = FUNC4(parent_dev);

	hr = FUNC8(sizeof(*hr), M_BHND, M_WAITOK);
	hr->owner = parent_dev;
	hr->cfg = hwcfg;
	hr->resource_specs = NULL;
	hr->resources = NULL;
	hr->dma_tags = NULL;
	hr->num_dma_tags = 0;

	/* Determine our bridge resource count from the hardware config. */
	nres = 0;
	for (size_t i = 0; hwcfg->resource_specs[i].type != -1; i++)
		nres++;

	/* Determine the total count and validate our DMA translation table. */
	ndt = 0;
	for (dt = hwcfg->dma_translations; dt != NULL &&
	    !FUNC0(dt); dt++)
	{
		/* Validate the defined translation */
		if ((dt->base_addr & dt->addr_mask) != 0) {
			FUNC6(dev, "invalid DMA translation; base "
			    "address %#jx overlaps address mask %#jx",
			    (uintmax_t)dt->base_addr, (uintmax_t)dt->addr_mask);

			error = EINVAL;
			goto failed;
		}

		if ((dt->addrext_mask & dt->addr_mask) != 0) {
			FUNC6(dev, "invalid DMA translation; addrext "
			    "mask %#jx overlaps address mask %#jx",
			    (uintmax_t)dt->addrext_mask,
			    (uintmax_t)dt->addr_mask);

			error = EINVAL;
			goto failed;
		}

		/* Increment our entry count */
		ndt++;
	}

	/* Allocate our DMA tags */
	hr->dma_tags = FUNC8(sizeof(*hr->dma_tags) * ndt, M_BHND,
	    M_WAITOK|M_ZERO);
	for (size_t i = 0; i < ndt; i++) {
		error = FUNC1(dev, parent_dmat,
		    &hwcfg->dma_translations[i], &hr->dma_tags[i]);
		if (error)
			goto failed;

		hr->num_dma_tags++;
	}

	/* Allocate space for a non-const copy of our resource_spec
	 * table; this will be updated with the RIDs assigned by
	 * bus_alloc_resources. */
	hr->resource_specs = FUNC8(sizeof(hr->resource_specs[0]) * (nres + 1),
	    M_BHND, M_WAITOK);

	/* Initialize and terminate the table */
	for (size_t i = 0; i < nres; i++)
		hr->resource_specs[i] = hwcfg->resource_specs[i];

	hr->resource_specs[nres].type = -1;

	/* Allocate space for our resource references */
	hr->resources = FUNC8(sizeof(hr->resources[0]) * nres, M_BHND,
	    M_WAITOK);

	/* Allocate host resources */
	error = FUNC2(hr->owner, hr->resource_specs,
	    hr->resources);
	if (error) {
		FUNC6(dev, "could not allocate bridge resources via "
		    "%s: %d\n", FUNC5(parent_dev), error);
		goto failed;
	}

	*resources = hr;
	return (0);

failed:
	if (hr->resource_specs != NULL)
		FUNC7(hr->resource_specs, M_BHND);

	if (hr->resources != NULL)
		FUNC7(hr->resources, M_BHND);

	for (size_t i = 0; i < hr->num_dma_tags; i++)
		FUNC3(hr->dma_tags[i]);

	if (hr->dma_tags != NULL)
		FUNC7(hr->dma_tags, M_BHND);

	FUNC7(hr, M_BHND);

	return (error);
}