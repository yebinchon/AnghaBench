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
typedef  scalar_t__ uint32_t ;
struct resource {int dummy; } ;
struct isa_config {int ic_ndrq; scalar_t__* ic_drqmask; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ISA_NDRQ ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC6(device_t child, struct isa_config *config,
    struct isa_config *result)
{
	int success, i;
	struct resource *res[ISA_NDRQ];

	/*
	 * First clear out any existing resource definitions.
	 */
	for (i = 0; i < ISA_NDRQ; i++) {
		FUNC1(child, SYS_RES_DRQ, i);
		res[i] = NULL;
	}

	success = 1;
	result->ic_ndrq = config->ic_ndrq;
	for (i = 0; i < config->ic_ndrq; i++) {
		uint32_t mask = config->ic_drqmask[i];
		int drq;

		/* the PnP device may have a null resource as filler */
		if (mask == 0) {
			result->ic_drqmask[i] = 0;
			continue;
		}

		for (drq = FUNC4(mask);
		     drq != -1;
		     drq = FUNC5(mask, drq)) {
			FUNC3(child, SYS_RES_DRQ, i,
					 drq, 1);
			res[i] = FUNC0(child,
							SYS_RES_DRQ, &i,
							0 /* !RF_ACTIVE */);
			if (res[i]) {
				result->ic_drqmask[i] = (1 << drq);
				break;
			}
		}

		/*
		 * If we didn't find a place for drq range i, then 
		 * give up now.
		 */
		if (!res[i]) {
			success = 0;
			break;
		}
	}

	for (i = 0; i < ISA_NDRQ; i++) {
		if (res[i])
			FUNC2(child, SYS_RES_DRQ,
					     i, res[i]);
	}

	return (success);
}