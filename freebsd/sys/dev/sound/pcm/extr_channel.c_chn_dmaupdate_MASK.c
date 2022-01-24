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
struct pcm_channel {scalar_t__ direction; int /*<<< orphan*/  dev; struct snd_dbuf* bufhard; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 scalar_t__ FUNC2 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ PCMDIR_PLAY ; 
 unsigned int FUNC4 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int snd_verbose ; 
 int /*<<< orphan*/  FUNC7 (struct snd_dbuf*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_dbuf*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC9 (struct snd_dbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_dbuf*) ; 
 unsigned int FUNC11 (struct snd_dbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_dbuf*) ; 
 unsigned int FUNC13 (struct snd_dbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_dbuf*,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC15(struct pcm_channel *c)
{
	struct snd_dbuf *b = c->bufhard;
	unsigned int delta, old, hwptr, amt;

	FUNC3(FUNC13(b) > 0, ("bufsize == 0"));
	FUNC1(c);

	old = FUNC11(b);
	hwptr = FUNC4(c);
	delta = (FUNC13(b) + hwptr - old) % FUNC13(b);
	FUNC14(b, hwptr);

	if (c->direction == PCMDIR_PLAY) {
		amt = FUNC6(delta, FUNC12(b));
		amt -= amt % FUNC9(b);
		if (amt > 0)
			FUNC8(b, NULL, amt);
	} else {
		amt = FUNC6(delta, FUNC10(b));
		amt -= amt % FUNC9(b);
		if (amt > 0)
		       FUNC7(b, NULL, amt);
	}
	if (snd_verbose > 3 && FUNC2(c) && delta == 0) {
		FUNC5(c->dev, "WARNING: %s DMA completion "
			"too fast/slow ! hwptr=%u, old=%u "
			"delta=%u amt=%u ready=%u free=%u\n",
			FUNC0(c), hwptr, old, delta, amt,
			FUNC12(b), FUNC10(b));
	}

	return delta;
}