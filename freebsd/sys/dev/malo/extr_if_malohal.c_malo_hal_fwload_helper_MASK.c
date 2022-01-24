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
struct malo_hal {int /*<<< orphan*/  mh_dev; } ;
struct firmware {int /*<<< orphan*/  datasize; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 int /*<<< orphan*/  MALO_NOWAIT ; 
 int /*<<< orphan*/  MALO_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 struct firmware* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct malo_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct malo_hal *mh, char *helper)
{
	const struct firmware *fw;
	int error;

	fw = FUNC1(helper);
	if (fw == NULL) {
		FUNC0(mh->mh_dev, "could not read microcode %s!\n",
		    helper);
		return (EIO);
	}

	FUNC0(mh->mh_dev, "load %s firmware image (%zu bytes)\n",
	    helper, fw->datasize);

	error = FUNC3(mh, fw->datasize, fw->data, fw->datasize,
		MALO_WAITOK);
	if (error != 0)
		goto fail;

	/* tell the card we're done and... */
	error = FUNC3(mh, 0, NULL, 0, MALO_NOWAIT);

fail:
	FUNC2(fw, FIRMWARE_UNLOAD);

	return (error);
}