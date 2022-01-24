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
typedef  int u_int16_t ;
struct ac97_info {int extcaps; int extstat; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AC97_EXTCAPS ; 
 int /*<<< orphan*/  AC97_REGEXT_STAT ; 
 int FUNC0 (struct ac97_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ac97_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct ac97_info *codec, u_int16_t mode)
{
	mode &= AC97_EXTCAPS;
	if ((mode & ~codec->extcaps) != 0) {
		FUNC2(codec->dev, "ac97 invalid mode set 0x%04x\n",
			      mode);
		return -1;
	}
	FUNC3(codec->lock);
	FUNC1(codec, AC97_REGEXT_STAT, mode);
	codec->extstat = FUNC0(codec, AC97_REGEXT_STAT) & AC97_EXTCAPS;
	FUNC4(codec->lock);
	return (mode == codec->extstat)? 0 : -1;
}