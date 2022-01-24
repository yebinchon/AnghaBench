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
struct vpoio_data {int /*<<< orphan*/  vpo_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PPB_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int PPB_WAIT ; 
 int VP0_ECMD_TIMEOUT ; 
 int VP0_ECONNECT ; 
 int VP0_EDATA_OVERFLOW ; 
 int VP0_ENEGOCIATE ; 
 int VP0_EOTHER ; 
 int VP0_EPPDATA_TIMEOUT ; 
 int VP0_ESTATUS_TIMEOUT ; 
 int /*<<< orphan*/  VP0_FAST_SPINTMO ; 
 int /*<<< orphan*/  VP0_LOW_SPINTMO ; 
 int VP0_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vpoio_data*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vpoio_data*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct vpoio_data*,char*,int) ; 
 scalar_t__ FUNC7 (struct vpoio_data*) ; 
 int FUNC8 (struct vpoio_data*,char*,int) ; 
 int FUNC9 (struct vpoio_data*,int,int) ; 
 char FUNC10 (struct vpoio_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  transfer_epilog ; 

int
FUNC12(struct vpoio_data *vpo, int host, int target, char *command,
		int clen, char *buffer, int blen, int *result, int *count,
		int *ret)
{
	device_t ppbus = FUNC3(vpo->vpo_dev);
	char r;
	char l, h = 0;
	int len, error = 0, not_connected = 0;
	int k;
	int negociated = 0;

	/*
	 * enter disk state, allocate the ppbus
	 *
	 * XXX
	 * Should we allow this call to be interruptible?
	 * The only way to report the interruption is to return
	 * EIO to upper SCSI code :^(
	 */
	if ((error = FUNC4(vpo, PPB_WAIT|PPB_INTR, &not_connected, 1)))
		return (error);

	if (not_connected) {
		*ret = VP0_ECONNECT;
		goto error;
	}

	/*
	 * Select the drive ...
	 */
	if ((*ret = FUNC9(vpo,host,target)))
		goto error;

	/*
	 * Send the command ...
	 */
	for (k = 0; k < clen; k+=2) {
		if (FUNC10(vpo, VP0_FAST_SPINTMO) != (char)0xa8) {
			*ret = VP0_ECMD_TIMEOUT;
			goto error;
		}
		if (FUNC8(vpo, &command[k], 2)) {
			*ret = VP0_EPPDATA_TIMEOUT;
			goto error;
		}
	}

	if (!(r = FUNC10(vpo, VP0_LOW_SPINTMO))) {
		*ret = VP0_ESTATUS_TIMEOUT;
		goto error;
	}

	if ((r & 0x30) == 0x10) {
		if (FUNC7(vpo)) {
			*ret = VP0_ENEGOCIATE;
			goto error;
		} else
			negociated = 1;
	}

	/*
	 * Complete transfer ...
	 */
	*count = 0;
	for (;;) {

		if (!(r = FUNC10(vpo, VP0_LOW_SPINTMO))) {
			*ret = VP0_ESTATUS_TIMEOUT;
			goto error;
		}

		/* stop when the ZIP+ wants to send status */
		if (r == (char)0xb8)
			break;

		if (*count >= blen) {
			*ret = VP0_EDATA_OVERFLOW;
			goto error;
		}

		/* ZIP+ wants to send data? */
		if (r == (char)0x88) {
			len = (((blen - *count) >= VP0_SECTOR_SIZE)) ?
				VP0_SECTOR_SIZE : 2;

			error = FUNC8(vpo, &buffer[*count], len);
		} else {
			if (!FUNC0(ppbus))
				len = 1;
			else
				len = (((blen - *count) >= VP0_SECTOR_SIZE)) ?
					VP0_SECTOR_SIZE : 1;

			error = FUNC6(vpo, &buffer[*count], len);
		}

		if (error) {
			*ret = error;
			goto error;
		}

		*count += len;
	}

	if ((FUNC1(ppbus) ||
			FUNC2(ppbus)) && negociated)
		FUNC11(ppbus, vpo->vpo_dev, transfer_epilog, NULL);

	/*
	 * Retrieve status ...
	 */
	if (FUNC7(vpo)) {
		*ret = VP0_ENEGOCIATE;
		goto error;
	} else
		negociated = 1;

	if (FUNC6(vpo, &l, 1)) {
		*ret = VP0_EOTHER;
		goto error;
	}

	/* check if the ZIP+ wants to send more status */
	if (FUNC10(vpo, VP0_FAST_SPINTMO) == (char)0xb8)
		if (FUNC6(vpo, &h, 1)) {
			*ret = VP0_EOTHER + 2;
			goto error;
		}

	/* Experience showed that we should discard this */
	if (h == (char) -1)
		h = 0;

	*result = ((int) h << 8) | ((int) l & 0xff);

error:
	if ((FUNC1(ppbus) ||
			FUNC2(ppbus)) && negociated)
		FUNC11(ppbus, vpo->vpo_dev, transfer_epilog, NULL);

	/* return to printer state, release the ppbus */
	FUNC5(vpo, NULL, 1);

	return (0);
}