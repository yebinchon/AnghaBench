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
 int H_AUTO ; 
 int H_INIT ; 
 int H_STROBE ; 
 int H_nSELIN ; 
 int PPB_INTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PPB_WAIT ; 
 int VP0_ECMD_TIMEOUT ; 
 int VP0_ECONNECT ; 
 int VP0_EDATA_OVERFLOW ; 
 int VP0_EOTHER ; 
 int VP0_EPPDATA_TIMEOUT ; 
 int VP0_ESTATUS_TIMEOUT ; 
 int /*<<< orphan*/  VP0_FAST_SPINTMO ; 
 int /*<<< orphan*/  VP0_LOW_SPINTMO ; 
 int VP0_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct vpoio_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vpoio_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct vpoio_data*) ; 
 int FUNC6 (struct vpoio_data*,char*,int) ; 
 int FUNC7 (struct vpoio_data*,char*,int) ; 
 int FUNC8 (struct vpoio_data*,int,int) ; 
 char FUNC9 (struct vpoio_data*,int /*<<< orphan*/ ) ; 

int
FUNC10(struct vpoio_data *vpo, int host, int target, char *command,
		int clen, char *buffer, int blen, int *result, int *count,
		int *ret)
{
	device_t ppbus = FUNC1(vpo->vpo_dev);
	char r;
	char l, h = 0;
	int len, error = 0;
	int k;

	/*
	 * enter disk state, allocate the ppbus
	 *
	 * XXX
	 * Should we allow this call to be interruptible?
	 * The only way to report the interruption is to return
	 * EIO do upper SCSI code :^(
	 */
	if ((error = FUNC3(vpo, PPB_WAIT|PPB_INTR)))
		return (error);

	if (!FUNC5(vpo)) {
		*ret = VP0_ECONNECT;
		goto error;
	}

	if ((*ret = FUNC8(vpo,host,target)))
		goto error;

	/*
	 * Send the command ...
	 *
	 * set H_SELIN low for vpoio_wait().
	 */
	FUNC2(ppbus, H_AUTO | H_nSELIN | H_INIT | H_STROBE);

	for (k = 0; k < clen; k++) {
		if (FUNC9(vpo, VP0_FAST_SPINTMO) != (char)0xe0) {
			*ret = VP0_ECMD_TIMEOUT;
			goto error;
		}
		if (FUNC7(vpo, &command[k], 1)) {
			*ret = VP0_EPPDATA_TIMEOUT;
			goto error;
		}
	}

	/*
	 * Completion ...
	 */

	*count = 0;
	for (;;) {

		if (!(r = FUNC9(vpo, VP0_LOW_SPINTMO))) {
			*ret = VP0_ESTATUS_TIMEOUT;
			goto error;
		}

		/* stop when the ZIP wants to send status */
		if (r == (char)0xf0)
			break;

		if (*count >= blen) {
			*ret = VP0_EDATA_OVERFLOW;
			goto error;
		}

		/* if in EPP mode or writing bytes, try to transfer a sector
		 * otherwise, just send one byte
		 */
		if (FUNC0(ppbus) || r == (char)0xc0)
			len = (((blen - *count) >= VP0_SECTOR_SIZE)) ?
				VP0_SECTOR_SIZE : 1;
		else
			len = 1;

		/* ZIP wants to send data? */
		if (r == (char)0xc0)
			error = FUNC7(vpo, &buffer[*count], len);
		else
			error = FUNC6(vpo, &buffer[*count], len);

		if (error) {
			*ret = error;
			goto error;
		}

		*count += len;
	}

	if (FUNC6(vpo, &l, 1)) {
		*ret = VP0_EOTHER;
		goto error;
	}

	/* check if the ZIP wants to send more status */
	if (FUNC9(vpo, VP0_FAST_SPINTMO) == (char)0xf0)
		if (FUNC6(vpo, &h, 1)) {
			*ret = VP0_EOTHER + 2;
			goto error;
		}

	*result = ((int) h << 8) | ((int) l & 0xff);

error:
	/* return to printer state, release the ppbus */
	FUNC4(vpo);
	return (0);
}