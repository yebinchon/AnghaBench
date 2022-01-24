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
struct sndcard_func {int /*<<< orphan*/  func; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DV_F_DRQ_MASK ; 
 int DV_F_DUAL_DMA ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SCF_MIDI ; 
 int /*<<< orphan*/  SCF_PCM ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sndcard_func*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct sndcard_func* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC10 (struct resource*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	device_t child;
	struct resource *res, *res2;
	int base, rid, rid2, s, flags;
	unsigned char val;

	base = FUNC8(dev);
	flags = FUNC5(dev);
	rid = 1;
	res = FUNC1(dev, SYS_RES_IOPORT, &rid, base + 0x100,
				 base + 0x107, 8, RF_ACTIVE);

	if (res == NULL)
		return ENXIO;

	res2 = NULL;

	/*
	 * Check for the presence of some GUS card.  Reset the card,
	 * then see if we can access the memory on it.
	 */

	FUNC11(res, 3, 0x4c);
	FUNC11(res, 5, 0);
	FUNC0(30 * 1000);

	FUNC11(res, 3, 0x4c);
	FUNC11(res, 5, 1);
	FUNC0(30 * 1000);

	s = FUNC13();

	/* Write to DRAM.  */

	FUNC11(res, 3, 0x43);		/* Register select */
	FUNC11(res, 4, 0);		/* Low addr */
	FUNC11(res, 5, 0);		/* Med addr */

	FUNC11(res, 3, 0x44);		/* Register select */
	FUNC11(res, 4, 0);		/* High addr */
	FUNC11(res, 7, 0x55);		/* DRAM */

	/* Read from DRAM.  */

	FUNC11(res, 3, 0x43);		/* Register select */
	FUNC11(res, 4, 0);		/* Low addr */
	FUNC11(res, 5, 0);		/* Med addr */

	FUNC11(res, 3, 0x44);		/* Register select */
	FUNC11(res, 4, 0);		/* High addr */
	val = FUNC10(res, 7);		/* DRAM */

	FUNC14(s);

	if (val != 0x55)
		goto fail;

	rid2 = 0;
	res2 = FUNC1(dev, SYS_RES_IOPORT, &rid2, base, base, 1,
				  RF_ACTIVE);

	if (res2 == NULL)
		goto fail;

	s = FUNC13();
	FUNC11(res2, 0x0f, 0x20);
	val = FUNC10(res2, 0x0f);
	FUNC14(s);

	if (val == 0xff || (val & 0x06) == 0)
		val = 0;
	else {
		val = FUNC10(res2, 0x506);	/* XXX Out of range.  */
		if (val == 0xff)
			val = 0;
	}

	FUNC2(dev, SYS_RES_IOPORT, rid2, res2);
	FUNC2(dev, SYS_RES_IOPORT, rid, res);

	if (val >= 10) {
		struct sndcard_func *func;

		/* Looks like a GUS MAX.  Set the rest of the resources.  */

		FUNC3(dev, SYS_RES_IOPORT, 2, base + 0x10c, 8);

		if (flags & DV_F_DUAL_DMA)
			FUNC3(dev, SYS_RES_DRQ, 1,
					 flags & DV_F_DRQ_MASK, 1);

		/* We can support the CS4231 and MIDI devices.  */

		func = FUNC9(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
		if (func == NULL)
			return ENOMEM;
		func->func = SCF_MIDI;
		child = FUNC4(dev, "midi", -1);
		FUNC7(child, func);

		func = FUNC9(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
		if (func == NULL)
			FUNC12("xxx: gus pcm not attached, out of memory\n");
		else {
			func->func = SCF_PCM;
			child = FUNC4(dev, "pcm", -1);
			FUNC7(child, func);
		}
		FUNC6(dev, "Gravis UltraSound MAX");
		return 0;
	} else {

		/*
		 * TODO: Support even older GUS cards.  MIDI should work on
		 * all models.
		 */
		return ENXIO;
	}

fail:
	FUNC2(dev, SYS_RES_IOPORT, rid, res);
	return ENXIO;
}