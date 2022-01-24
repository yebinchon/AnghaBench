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
struct ac97_info {scalar_t__ count; int flags; int extstat; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  noext; int /*<<< orphan*/  devinfo; int /*<<< orphan*/  methods; } ;

/* Variables and functions */
 int AC97_EXTCAPS ; 
 int AC97_F_EAPD_INV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AC97_REGEXT_STAT ; 
 int /*<<< orphan*/  AC97_REG_POWER ; 
 int ENODEV ; 
 int FUNC1 (struct ac97_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ac97_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned
FUNC7(struct ac97_info *codec)
{
	FUNC5(codec->lock);
	codec->count = FUNC0(codec->methods, codec->devinfo);
	if (codec->count == 0) {
		FUNC4(codec->dev, "ac97 codec init failed\n");
		FUNC6(codec->lock);
		return ENODEV;
	}

	FUNC3(codec, AC97_REG_POWER, (codec->flags & AC97_F_EAPD_INV)? 0x8000 : 0x0000);
	FUNC2(codec);
	FUNC3(codec, AC97_REG_POWER, (codec->flags & AC97_F_EAPD_INV)? 0x8000 : 0x0000);

	if (!codec->noext) {
		FUNC3(codec, AC97_REGEXT_STAT, codec->extstat);
		if ((FUNC1(codec, AC97_REGEXT_STAT) & AC97_EXTCAPS)
		    != codec->extstat)
			FUNC4(codec->dev, "ac97 codec failed to reset extended mode (%x, got %x)\n",
				      codec->extstat,
				      FUNC1(codec, AC97_REGEXT_STAT) &
				      AC97_EXTCAPS);
	}

	if ((FUNC1(codec, AC97_REG_POWER) & 2) == 0)
		FUNC4(codec->dev, "ac97 codec reports dac not ready\n");
	FUNC6(codec->lock);
	return 0;
}