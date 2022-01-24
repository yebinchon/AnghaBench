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
 int CHN_F_MMAP ; 
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_dbuf*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_dbuf*,struct snd_dbuf*,struct pcm_channel*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (struct snd_dbuf*) ; 
 unsigned int FUNC5 (struct snd_dbuf*) ; 

__attribute__((used)) static void
FUNC6(struct pcm_channel *c)
{
    	struct snd_dbuf *b = c->bufhard;
    	struct snd_dbuf *bs = c->bufsoft;
	unsigned int amt;

	FUNC0(c);

	if (c->flags & CHN_F_MMAP)
		FUNC2(bs, NULL, FUNC5(bs));

	amt = FUNC4(bs);
	if (amt > 0)
		FUNC3(b, bs, c, c->feeder, amt);

	amt = FUNC5(b);
	if (amt > 0) {
		c->xruns++;
		FUNC2(b, NULL, amt);
	}

	if (FUNC5(bs) > 0)
		FUNC1(c);
}