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
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct malo_hal {int /*<<< orphan*/  mh_dev; } ;
struct firmware {size_t datasize; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 int /*<<< orphan*/  MALO_NOWAIT ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 struct firmware* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct malo_hal*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct malo_hal *mh, char *firmware)
{
	const struct firmware *fw;
	const uint8_t *fp;
	int error;
	size_t count;
	uint16_t seqnum;
	uint32_t blocksize;

	error = 0;

	fw = FUNC3(firmware);
	if (fw == NULL) {
		FUNC2(mh->mh_dev, "could not read firmware %s!\n",
		    firmware);
		return (EIO);
	}

	FUNC2(mh->mh_dev, "load %s firmware image (%zu bytes)\n",
	    firmware, fw->datasize);

	seqnum = 1;
	for (count = 0; count < fw->datasize; count += blocksize) {
		blocksize = FUNC1(256, fw->datasize - count);
		fp = (const uint8_t *)fw->data + count;

		error = FUNC5(mh, fp, blocksize, seqnum++,
		    MALO_NOWAIT);
		if (error != 0)
			goto fail;
		FUNC0(500);
	}
	
	/*
	 * send a command with size 0 to tell that the firmware has been
	 * uploaded
	 */
	error = FUNC5(mh, NULL, 0, seqnum++, MALO_NOWAIT);
	FUNC0(100);

fail:
	FUNC4(fw, FIRMWARE_UNLOAD);

	return (error);
}