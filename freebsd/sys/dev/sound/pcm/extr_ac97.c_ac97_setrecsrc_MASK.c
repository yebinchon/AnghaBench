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
struct ac97mixtable_entry {int recidx; } ;
struct ac97_info {int /*<<< orphan*/  lock; struct ac97mixtable_entry* mix; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_REG_RECSEL ; 
 int /*<<< orphan*/  FUNC0 (struct ac97_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ac97_info *codec, int channel)
{
	struct ac97mixtable_entry *e = &codec->mix[channel];

	if (e->recidx > 0) {
		int val = e->recidx - 1;
		val |= val << 8;
		FUNC1(codec->lock);
		FUNC0(codec, AC97_REG_RECSEL, val);
		FUNC2(codec->lock);
		return 0;
	} else
		return -1;
}