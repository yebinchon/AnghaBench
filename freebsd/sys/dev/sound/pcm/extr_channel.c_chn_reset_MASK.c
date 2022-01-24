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
typedef  scalar_t__ uint32_t ;
struct pcm_channel {int timeout; int /*<<< orphan*/  devinfo; int /*<<< orphan*/  methods; int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; scalar_t__ xruns; scalar_t__ interrupts; scalar_t__ feedcount; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHN_F_BITPERFECT ; 
 int /*<<< orphan*/  CHN_F_RESET ; 
 int /*<<< orphan*/  FUNC2 (struct pcm_channel*) ; 
 int SD_F_BITPERFECT ; 
 int /*<<< orphan*/  chn_latency ; 
 int /*<<< orphan*/  FUNC3 (struct pcm_channel*) ; 
 int FUNC4 (struct pcm_channel*,scalar_t__) ; 
 int FUNC5 (struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pcm_channel*,scalar_t__,scalar_t__) ; 
 int FUNC7 (struct pcm_channel*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct pcm_channel *c, uint32_t fmt, uint32_t spd)
{
	int r;

	FUNC2(c);
	c->feedcount = 0;
	c->flags &= CHN_F_RESET;
	c->interrupts = 0;
	c->timeout = 1;
	c->xruns = 0;

	c->flags |= (FUNC8(c->dev) & SD_F_BITPERFECT) ?
	    CHN_F_BITPERFECT : 0;

	r = FUNC0(c->methods, c->devinfo);
	if (r == 0 && fmt != 0 && spd != 0) {
		r = FUNC6(c, fmt, spd);
		fmt = 0;
		spd = 0;
	}
	if (r == 0 && fmt != 0)
		r = FUNC4(c, fmt);
	if (r == 0 && spd != 0)
		r = FUNC7(c, spd);
	if (r == 0)
		r = FUNC5(c, chn_latency);
	if (r == 0) {
		FUNC3(c);
		r = FUNC1(c->methods, c->devinfo);
	}
	return r;
}