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
struct snd_dbuf {int dummy; } ;
struct pcm_channel {int flags; int /*<<< orphan*/  xruns; int /*<<< orphan*/  feeder; struct snd_dbuf* bufsoft; struct snd_dbuf* bufhard; } ;

/* Variables and functions */
 int CHN_F_CLOSING ; 
 int CHN_F_MMAP ; 
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_dbuf*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_dbuf*,struct snd_dbuf*,struct pcm_channel*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC6 (struct snd_dbuf*) ; 
 unsigned int FUNC7 (struct snd_dbuf*) ; 
 unsigned int FUNC8 (struct snd_dbuf*) ; 
 scalar_t__ FUNC9 (unsigned int,struct snd_dbuf*,struct snd_dbuf*) ; 

__attribute__((used)) static void
FUNC10(struct pcm_channel *c)
{
    	struct snd_dbuf *b = c->bufhard;
    	struct snd_dbuf *bs = c->bufsoft;
	unsigned int amt, want, wasfree;

	FUNC0(c);

	if ((c->flags & CHN_F_MMAP) && !(c->flags & CHN_F_CLOSING))
		FUNC4(bs, NULL, FUNC6(bs));

	wasfree = FUNC6(b);
	want = FUNC3(FUNC8(b),
	    FUNC2(0, FUNC9(FUNC8(bs), bs, b) -
	     FUNC7(b)));
	amt = FUNC3(wasfree, want);
	if (amt > 0)
		FUNC5(bs, b, c, c->feeder, amt);

	/*
	 * Possible xruns. There should be no empty space left in buffer.
	 */
	if (FUNC7(b) < want)
		c->xruns++;

	if (FUNC6(b) < wasfree)
		FUNC1(c);
}