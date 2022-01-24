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
typedef  union mfi_mpi2_request_descriptor {int dummy; } mfi_mpi2_request_descriptor ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct mfi_softc {int mfi_max_fw_cmds; int /*<<< orphan*/ * request_desc_pool; int /*<<< orphan*/  mfi_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

union mfi_mpi2_request_descriptor *
FUNC2(struct mfi_softc *sc, uint16_t index)
{
	uint8_t *p;

	if (index >= sc->mfi_max_fw_cmds) {
		FUNC0(sc->mfi_dev, "Invalid SMID (0x%x)request "
		    "for descriptor\n", index);
		return NULL;
	}
	p = sc->request_desc_pool + sizeof(union mfi_mpi2_request_descriptor)
	    * index;
	FUNC1(p, 0, sizeof(union mfi_mpi2_request_descriptor));
	return (union mfi_mpi2_request_descriptor *)p;
}