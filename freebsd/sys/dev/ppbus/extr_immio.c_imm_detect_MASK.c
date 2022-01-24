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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vpoio_data*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vpoio_data*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_microseq ; 

__attribute__((used)) static int
FUNC8(struct vpoio_data *vpo)
{
	device_t ppbus = FUNC0(vpo->vpo_dev);
	int error;

	if ((error = FUNC6(ppbus, vpo->vpo_dev, PPB_DONTWAIT)))
		return (error);

	/* disconnect the drive, keep the bus */
	FUNC3(vpo, NULL, 0);

	vpo->vpo_mode_found = VP0_MODE_UNDEFINED;
	error = 1;

	/* try to enter EPP mode since vpoio failure put the bus in NIBBLE */
	if (FUNC7(ppbus, PPB_EPP) != -1) {
		FUNC2(vpo, PPB_DONTWAIT, &error, 0);
	}

	/* if connection failed try PS/2 then NIBBLE modes */
	if (error) {
		if (FUNC7(ppbus, PPB_PS2) != -1) {
			FUNC2(vpo, PPB_DONTWAIT, &error, 0);
		}
		if (error) {
			if (FUNC7(ppbus, PPB_NIBBLE) != -1) {
				FUNC2(vpo, PPB_DONTWAIT, &error, 0);
				if (error)
					goto error;
				vpo->vpo_mode_found = VP0_MODE_NIBBLE;
			} else {
				FUNC1(vpo->vpo_dev,
				    "NIBBLE mode unavailable!\n");
				goto error;
			}
		} else {
			vpo->vpo_mode_found = VP0_MODE_PS2;
		}
	} else {
		vpo->vpo_mode_found = VP0_MODE_EPP;
	}

	/* send SCSI reset signal */
	FUNC4(ppbus, vpo->vpo_dev, reset_microseq, NULL);

	/* release the bus now */
	FUNC3(vpo, &error, 1);

	/* ensure we are disconnected or daisy chained peripheral
	 * may cause serious problem to the disk */

	if (error) {
		if (bootverbose)
			FUNC1(vpo->vpo_dev,
			    "can't disconnect from the drive\n");
		goto error;
	}

	return (0);

error:
	FUNC5(ppbus, vpo->vpo_dev);
	return (VP0_EINITFAILED);
}