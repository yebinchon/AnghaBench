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
typedef  scalar_t__ uint16_t ;
struct ichwd_device {scalar_t__ device; int /*<<< orphan*/ * desc; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ VENDORID_INTEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 struct ichwd_device* ichwd_smb_devices ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC6(device_t isa, struct ichwd_device **id_p)
{
	struct ichwd_device *id;
	device_t isab, smb;
	uint16_t devid;

	/*
	 * Check if SMBus controller provides TCO configuration.
	 * The controller's device and function are fixed and we expect
	 * it to be on the same bus as ISA bridge.
	 */
	isab = FUNC0(isa);
	smb = FUNC1(FUNC4(isab), FUNC2(isab), 31, 4);
	if (smb == NULL)
		return (NULL);
	if (FUNC5(smb) != VENDORID_INTEL)
		return (NULL);
	devid = FUNC3(smb);
	for (id = ichwd_smb_devices; id->desc != NULL; ++id) {
		if (devid == id->device) {
			if (id_p != NULL)
				*id_p = id;
			return (smb);
		}
	}

	return (NULL);
}