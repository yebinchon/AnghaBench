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
typedef  int uint32_t ;
typedef  scalar_t__ u_int ;
struct siba_erom {int /*<<< orphan*/  io; } ;
struct siba_core_id {int dummy; } ;
struct siba_admatch {int am_base; int am_size; } ;
struct bhnd_core_match {int dummy; } ;
struct bhnd_core_info {int /*<<< orphan*/  core_idx; int /*<<< orphan*/  unit; } ;
typedef  int bhnd_size_t ;
typedef  int /*<<< orphan*/  bhnd_port_type ;
typedef  int /*<<< orphan*/  bhnd_erom_t ;
typedef  int bhnd_addr_t ;

/* Variables and functions */
 int BHND_ADDR_MAX ; 
 int /*<<< orphan*/  BHND_PORT_DEVICE ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENXIO ; 
 int FUNC0 (scalar_t__) ; 
 int SIBA_CFG_SIZE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct siba_core_id*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (struct siba_core_id*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct siba_core_id*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct bhnd_core_match const*,struct bhnd_core_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct siba_core_id*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (int,struct siba_admatch*) ; 
 scalar_t__ FUNC11 (struct siba_core_id*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC12(bhnd_erom_t *erom, const struct bhnd_core_match *desc,
    bhnd_port_type type, u_int port, u_int region, struct bhnd_core_info *info,
    bhnd_addr_t *addr, bhnd_size_t *size)
{
	struct siba_erom	*sc;
	struct bhnd_core_info	 core;
	struct siba_core_id	 sid;
	struct siba_admatch	 admatch;
	uint32_t		 am;
	u_int			 am_offset;
	u_int			 addrspace, cfg;
	
	int			 error;

	sc = (struct siba_erom *)erom;

	/* Locate the requested core */
	if ((error = FUNC8(erom, desc, &core)))
		return (error);

	/* Fetch full siba core ident */
	error = FUNC7(&sc->io, core.core_idx, core.unit, &sid);
	if (error)
		return (error);

	/* Is port valid? */
	if (!FUNC9(&sid, type, port))
		return (ENOENT);

	/* Is region valid? */
	if (region >= FUNC11(&sid, type, port))
		return (ENOENT);

	/* Is this a siba configuration region? If so, this is mapped to an
	 * offset within the device0.0 port */
	error = FUNC5(&sid, type, port, region, &cfg);
	if (!error) {
		bhnd_addr_t	region_addr;
		bhnd_addr_t	region_size;
		bhnd_size_t	cfg_offset, cfg_size;

		cfg_offset = FUNC0(cfg);
		cfg_size = SIBA_CFG_SIZE;

		/* Fetch the device0.0 addr/size */
		error = FUNC12(erom, desc, BHND_PORT_DEVICE,
		    0, 0, NULL, &region_addr, &region_size);
		if (error)
			return (error);

		/* Verify that our offset fits within the region */
		if (region_size < cfg_size) {
			FUNC2("%s%u.%u offset %ju exceeds %s0.0 size %ju\n",
			    FUNC1(type), port, region, cfg_offset,
			    FUNC1(BHND_PORT_DEVICE), region_size);

			return (ENXIO);
		}

		if (BHND_ADDR_MAX - region_addr < cfg_offset) {
			FUNC2("%s%u.%u offset %ju would overflow %s0.0 addr "
			    "%ju\n", FUNC1(type), port, region,
			    cfg_offset, FUNC1(BHND_PORT_DEVICE),
			    region_addr);

			return (ENXIO);
		}

		if (info != NULL)
			*info = core;

		*addr = region_addr + cfg_offset;
		*size = cfg_size;
		return (0);
	}

	/* 
	 * Otherwise, must be a device port.
	 * 
	 * Map the bhnd device port to a siba addrspace index. Unlike siba(4)
	 * bus drivers, we do not exclude the siba(4) configuration blocks from
	 * the first device port.
	 */
	error = FUNC3(&sid, type, port, region, &addrspace);
	if (error)
		return (error);

	/* Determine the register offset */
	am_offset = FUNC4(addrspace);
	if (am_offset == 0) {
		FUNC2("addrspace %u is unsupported", addrspace);
		return (ENODEV);
	}

	/* Read and parse the address match register */
	am = FUNC6(&sc->io, core.core_idx, am_offset);

	if ((error = FUNC10(am, &admatch))) {
		FUNC2("failed to decode address match register value 0x%x\n",
		    am);
		return (error);
	}

	if (info != NULL)
		*info = core;

	*addr = admatch.am_base;
	*size = admatch.am_size;

	return (0);
}