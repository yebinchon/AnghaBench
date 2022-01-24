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
struct pcm_feeder {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
#define  FEEDMIXER_CHANNELS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SND_CHN_MAX ; 
 int SND_CHN_MIN ; 

__attribute__((used)) static int
FUNC2(struct pcm_feeder *f, int what, int value)
{

	switch (what) {
	case FEEDMIXER_CHANNELS:
		if (value < SND_CHN_MIN || value > SND_CHN_MAX)
			return (EINVAL);
		f->data = FUNC0(FUNC1(f->data), value);
		break;
	default:
		return (EINVAL);
		break;
	}

	return (0);
}