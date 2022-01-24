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
typedef  int uint32_t ;
struct pcmchan_caps {int /*<<< orphan*/  maxspeed; int /*<<< orphan*/  minspeed; } ;
struct pcm_channel {int format; int speed; int /*<<< orphan*/  bufhard; int /*<<< orphan*/  devinfo; int /*<<< orphan*/  methods; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pcm_channel*) ; 
 scalar_t__ FUNC3 (struct pcm_channel*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcmchan_caps* FUNC5 (struct pcm_channel*) ; 
 int FUNC6 (struct pcm_channel*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pcm_channel*) ; 
 int feeder_rate_round ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(struct pcm_channel *c, uint32_t format, uint32_t speed)
{
	struct pcmchan_caps *caps;
	uint32_t hwspeed, delta;
	int ret;

	FUNC2(c);

	if (speed < 1 || format == 0 || FUNC3(c))
		return (EINVAL);

	c->format = format;
	c->speed = speed;

	caps = FUNC5(c);

	hwspeed = speed;
	FUNC4(hwspeed, caps->minspeed, caps->maxspeed);

	FUNC10(c->bufhard, FUNC1(c->methods, c->devinfo,
	    hwspeed));
	hwspeed = FUNC9(c->bufhard);

	delta = (hwspeed > speed) ? (hwspeed - speed) : (speed - hwspeed);

	if (delta <= feeder_rate_round)
		c->speed = hwspeed;

	ret = FUNC7(c);

	if (ret == 0)
		ret = FUNC0(c->methods, c->devinfo,
		    FUNC8(c->bufhard));

	if (ret == 0)
		ret = FUNC6(c, -2, 0, 0);

	return (ret);
}