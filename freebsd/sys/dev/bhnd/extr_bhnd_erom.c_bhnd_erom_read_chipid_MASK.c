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
struct bhnd_erom_io {int dummy; } ;
struct bhnd_chipid {int chip_caps; void* enum_addr; void* chip_type; void* ncores; void* chip_rev; void* chip_pkg; void* chip_id; } ;
typedef  int /*<<< orphan*/  bhnd_size_t ;
typedef  void* bhnd_addr_t ;

/* Variables and functions */
 int BHND_CAP_BP64 ; 
 int BHND_CAP_PMU ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  CHIPC_CAPABILITIES ; 
 int CHIPC_CAP_BKPLN64 ; 
 int CHIPC_CAP_PMU ; 
 int /*<<< orphan*/  CHIPC_EROMPTR ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHIPC_ID ; 
 int /*<<< orphan*/  CHIPC_ID_BUS ; 
 int /*<<< orphan*/  CHIPC_ID_CHIP ; 
 int /*<<< orphan*/  CHIPC_ID_NUMCORE ; 
 int /*<<< orphan*/  CHIPC_ID_PKG ; 
 int /*<<< orphan*/  CHIPC_ID_REV ; 
 void* FUNC2 (struct bhnd_erom_io*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bhnd_erom_io*,void**,int /*<<< orphan*/ *) ; 

int
FUNC4(struct bhnd_erom_io *eio, struct bhnd_chipid *cid)
{
	bhnd_addr_t	cc_addr;
	bhnd_size_t	cc_size;
	uint32_t	idreg, cc_caps;
	int		error;

	/* Fetch ChipCommon address */
	if ((error = FUNC3(eio, &cc_addr, &cc_size)))
		return (error);

	/* Read chip identifier */
	idreg = FUNC2(eio, CHIPC_ID, 4);

	/* Extract the basic chip info */
	cid->chip_id = FUNC1(idreg, CHIPC_ID_CHIP);
	cid->chip_pkg = FUNC1(idreg, CHIPC_ID_PKG);
	cid->chip_rev = FUNC1(idreg, CHIPC_ID_REV);
	cid->chip_type = FUNC1(idreg, CHIPC_ID_BUS);
	cid->ncores = FUNC1(idreg, CHIPC_ID_NUMCORE);

	/* Populate EROM address */
	if (FUNC0(cid->chip_type)) {
		cid->enum_addr = FUNC2(eio, CHIPC_EROMPTR, 4);
	} else {
		cid->enum_addr = cc_addr;
	}

	/* Populate capability flags */
	cc_caps = FUNC2(eio, CHIPC_CAPABILITIES, 4);
	cid->chip_caps = 0x0;

	if (cc_caps & CHIPC_CAP_BKPLN64)
		cid->chip_caps |= BHND_CAP_BP64;

	if (cc_caps & CHIPC_CAP_PMU)
		cid->chip_caps |= BHND_CAP_PMU;

	return (0);
}