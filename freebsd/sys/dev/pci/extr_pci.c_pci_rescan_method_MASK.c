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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_ZERO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int PCIM_HDRTYPE ; 
 int PCIM_MFDEV ; 
 int /*<<< orphan*/  PCIR_HDRTYPE ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int PCI_MAXHDRTYPE ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(device_t dev)
{
#define	REG(n, w)	PCIB_READ_CONFIG(pcib, busno, s, f, n, w)
	device_t pcib = FUNC5(dev);
	device_t child, *devlist, *unchanged;
	int devcount, error, i, j, maxslots, oldcount;
	int busno, domain, s, f, pcifunchigh;
	uint8_t hdrtype;

	/* No need to check for ARI on a rescan. */
	error = FUNC4(dev, &devlist, &devcount);
	if (error)
		return (error);
	if (devcount != 0) {
		unchanged = FUNC8(devcount * sizeof(device_t), M_TEMP,
		    M_NOWAIT | M_ZERO);
		if (unchanged == NULL) {
			FUNC7(devlist, M_TEMP);
			return (ENOMEM);
		}
	} else
		unchanged = NULL;

	domain = FUNC13(dev);
	busno = FUNC12(dev);
	maxslots = FUNC1(pcib);
	for (s = 0; s <= maxslots; s++) {
		/* If function 0 is not present, skip to the next slot. */
		f = 0;
		if (REG(PCIR_VENDOR, 2) == 0xffff)
			continue;
		pcifunchigh = 0;
		hdrtype = REG(PCIR_HDRTYPE, 1);
		if ((hdrtype & PCIM_HDRTYPE) > PCI_MAXHDRTYPE)
			continue;
		if (hdrtype & PCIM_MFDEV)
			pcifunchigh = FUNC0(pcib);
		for (f = 0; f <= pcifunchigh; f++) {
			if (REG(PCIR_VENDOR, 2) == 0xffff)
				continue;

			/*
			 * Found a valid function.  Check if a
			 * device_t for this device already exists.
			 */
			for (i = 0; i < devcount; i++) {
				child = devlist[i];
				if (child == NULL)
					continue;
				if (FUNC10(child) == s &&
				    FUNC9(child) == f) {
					unchanged[i] = child;
					goto next_func;
				}
			}

			FUNC11(pcib, dev, domain, busno, s, f);
		next_func:;
		}
	}

	/* Remove devices that are no longer present. */
	for (i = 0; i < devcount; i++) {
		if (unchanged[i] != NULL)
			continue;
		FUNC3(dev, devlist[i]);
	}

	FUNC7(devlist, M_TEMP);
	oldcount = devcount;

	/* Try to attach the devices just added. */
	error = FUNC4(dev, &devlist, &devcount);
	if (error) {
		FUNC7(unchanged, M_TEMP);
		return (error);
	}

	for (i = 0; i < devcount; i++) {
		for (j = 0; j < oldcount; j++) {
			if (devlist[i] == unchanged[j])
				goto next_device;
		}

		FUNC6(devlist[i]);
	next_device:;
	}

	FUNC7(unchanged, M_TEMP);
	FUNC7(devlist, M_TEMP);
	return (0);
#undef REG
}