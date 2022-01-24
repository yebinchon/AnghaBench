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
struct vpoio_data {int /*<<< orphan*/  vpo_dev; int /*<<< orphan*/  vpo_mode_found; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PPB_DONTWAIT ; 
 int /*<<< orphan*/  PPB_EPP ; 
 int /*<<< orphan*/  PPB_NIBBLE ; 
 int /*<<< orphan*/  PPB_PS2 ; 
 int VP0_EINITFAILED ; 
 int /*<<< orphan*/  VP0_MODE_EPP ; 
 int /*<<< orphan*/  VP0_MODE_NIBBLE ; 
 int /*<<< orphan*/  VP0_MODE_PS2 ; 
 int /*<<< orphan*/  VP0_MODE_UNDEFINED ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  connect_epp_microseq ; 
 int /*<<< orphan*/  connect_spp_microseq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  disconnect_microseq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vpoio_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct vpoio_data*) ; 

__attribute__((used)) static int
FUNC8(struct vpoio_data *vpo)
{
	device_t ppbus = FUNC0(vpo->vpo_dev);
	int error, ret;

	/* allocate the bus, then apply microsequences */
	if ((error = FUNC4(ppbus, vpo->vpo_dev, PPB_DONTWAIT)))
		return (error);

	/* Force disconnection */
	FUNC2(ppbus, vpo->vpo_dev, disconnect_microseq, &ret);

	/* Try to enter EPP mode, then connect to the drive in EPP mode */
	if (FUNC5(ppbus, PPB_EPP) != -1) {
		/* call manually the microseq instead of using the appropriate function
		 * since we already requested the ppbus */
		FUNC2(ppbus, vpo->vpo_dev, connect_epp_microseq, &ret);
	}

	/* If EPP mode switch failed or ZIP connection in EPP mode failed,
	 * try to connect in NIBBLE mode */
	if (!FUNC6(vpo)) {

		/* The interface must be at least PS/2 or NIBBLE capable.
		 * There is no way to know if the ZIP will work with
		 * PS/2 mode since PS/2 and SPP both use the same connect
		 * sequence. One must suppress PS/2 with boot flags if
		 * PS/2 mode fails (see ppc(4)).
		 */
		if (FUNC5(ppbus, PPB_PS2) != -1) {
			vpo->vpo_mode_found = VP0_MODE_PS2;
		} else {
			if (FUNC5(ppbus, PPB_NIBBLE) == -1)
				goto error;

			vpo->vpo_mode_found = VP0_MODE_NIBBLE;
		}

		/* Can't know if the interface is capable of PS/2 yet */
		FUNC2(ppbus, vpo->vpo_dev, connect_spp_microseq, &ret);
		if (!FUNC6(vpo)) {
			vpo->vpo_mode_found = VP0_MODE_UNDEFINED;
			if (bootverbose)
				FUNC1(vpo->vpo_dev,
				    "can't connect to the drive\n");

			/* disconnect and release the bus */
			FUNC2(ppbus, vpo->vpo_dev, disconnect_microseq,
					&ret);
			goto error;
		}
	} else {
		vpo->vpo_mode_found = VP0_MODE_EPP;
	}

	/* send SCSI reset signal */
	FUNC7(vpo);

	FUNC2(ppbus, vpo->vpo_dev, disconnect_microseq, &ret);

	/* ensure we are disconnected or daisy chained peripheral
	 * may cause serious problem to the disk */
	if (FUNC6(vpo)) {
		if (bootverbose)
			FUNC1(vpo->vpo_dev,
			    "can't disconnect from the drive\n");
		goto error;
	}

	FUNC3(ppbus, vpo->vpo_dev);
	return (0);

error:
	FUNC3(ppbus, vpo->vpo_dev);
	return (VP0_EINITFAILED);
}