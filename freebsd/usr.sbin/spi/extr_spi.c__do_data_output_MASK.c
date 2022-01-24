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
typedef  int /*<<< orphan*/  uint8_t ;
struct spi_options {int ncmd; int count; scalar_t__ verbose; int /*<<< orphan*/  lsb; int /*<<< orphan*/  ASCII; scalar_t__ binary; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC1 (char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void *pr, struct spi_options *popt)
{
	int	err, idx, icount;
	const char *sz_bytes, *sz_byte2;
	const uint8_t *pbuf;

	pbuf = (uint8_t *)pr + popt->ncmd; /* only the data we want */
	icount = popt->count;
	err = 0;

	if (icount <= 0) {
		return -1; /* should not but could happen */
	}

	if (icount != 1)
		sz_bytes = "bytes";	/* correct plurality of 'byte|bytes' */
	else
		sz_bytes = "byte";

	if (popt->ncmd != 1)
		sz_byte2 = "bytes";
	else
		sz_byte2 = "byte";

	/* binary on stdout */
	if (popt->binary || !popt->ASCII) {
		if (popt->verbose > 0)
			FUNC0(stderr, "Binary output of %d %s\n", icount,
			    sz_bytes);

		err = (int)FUNC2(pbuf, 1, icount, stdout) != icount;
	}
	else if (icount > 0) {
		if (popt->verbose > 0)
			FUNC0(stderr, "ASCII output of %d %s\n", icount,
			    sz_bytes);

		/* ASCII output */
		for (idx = 0; !err && idx < icount; idx++) {
			if (idx) {
				/*
				 * not the first time, insert separating space
				 */
				err = FUNC1(' ', stdout) == EOF;
			}

			if (!err)
				err = FUNC0(stdout, "%02x", pbuf[idx]) < 0;
		}

		if (!err)
			err = FUNC1('\n', stdout) == EOF;
	}

	/* verbose text out on stderr */

	if (err)
		FUNC0(stderr, "Error writing to stdout, errno=%d\n", errno);
	else if (popt->verbose > 0 && icount) {
		FUNC0(stderr, 
		    "%d command %s and %d data %s read from SPI device\n",
		    popt->ncmd, sz_byte2, icount, sz_bytes);

		/* verbose output will show the command bytes as well */
		FUNC3(pr, icount + popt->ncmd, popt->lsb);
	}

	return err;
}