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
typedef  int uint32_t ;
typedef  scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ ncores; } ;
struct siba_erom {TYPE_1__ io; } ;
struct siba_admatch {size_t am_base; size_t am_size; } ;
typedef  int /*<<< orphan*/  bhnd_erom_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDH_DEVICE ; 
 int /*<<< orphan*/  IDH_VENDOR ; 
 int /*<<< orphan*/  IDL_NRADDR ; 
 int /*<<< orphan*/  IDL_SBREV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIBA_CFG0_IDHIGH ; 
 int /*<<< orphan*/  SIBA_CFG0_IDLOW ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int FUNC5 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int FUNC6 (int,struct siba_admatch*) ; 

__attribute__((used)) static int
FUNC7(bhnd_erom_t *erom)
{
	struct siba_erom	*sc;
	int			 error;

	sc = (struct siba_erom *)erom;

	/* Enumerate all cores. */
	for (u_int i = 0; i < sc->io.ncores; i++) {
		uint32_t idhigh, idlow;
		uint32_t nraddr;

		idhigh = FUNC5(&sc->io, i,
		    FUNC0(SIBA_CFG0_IDHIGH));
		idlow = FUNC5(&sc->io, i,
		    FUNC0(SIBA_CFG0_IDLOW));

		FUNC3("siba core %u:\n", i);
		FUNC3("\tvendor:\t0x%04x\n", FUNC2(idhigh, IDH_VENDOR));
		FUNC3("\tdevice:\t0x%04x\n", FUNC2(idhigh, IDH_DEVICE));
		FUNC3("\trev:\t0x%04x\n", FUNC1(idhigh));
		FUNC3("\tsbrev:\t0x%02x\n", FUNC2(idlow, IDL_SBREV));

		/* Enumerate the address match registers */
		nraddr = FUNC2(idlow, IDL_NRADDR);
		FUNC3("\tnraddr\t0x%04x\n", nraddr);

		for (size_t addrspace = 0; addrspace < nraddr; addrspace++) {
			struct siba_admatch	admatch;
			uint32_t		am;
			u_int			am_offset;

			/* Determine the register offset */
			am_offset = FUNC4(addrspace);
			if (am_offset == 0) {
				FUNC3("addrspace %zu unsupported",
				    addrspace);
				break;
			}
			
			/* Read and parse the address match register */
			am = FUNC5(&sc->io, i, am_offset);
			if ((error = FUNC6(am, &admatch))) {
				FUNC3("failed to decode address match "
				    "register value 0x%x\n", am);
				continue;
			}

			FUNC3("\taddrspace %zu\n", addrspace);
			FUNC3("\t\taddr: 0x%08x\n", admatch.am_base);
			FUNC3("\t\tsize: 0x%08x\n", admatch.am_size);
		}
	}

	return (0);
}