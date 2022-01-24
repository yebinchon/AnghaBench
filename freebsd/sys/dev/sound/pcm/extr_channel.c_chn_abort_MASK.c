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
struct pcm_channel {int flags; struct snd_dbuf* bufsoft; struct snd_dbuf* bufhard; } ;

/* Variables and functions */
 int CHN_F_ABORTING ; 
 int CHN_F_TRIGGERED ; 
 int CHN_F_VIRTUAL ; 
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 scalar_t__ FUNC1 (struct pcm_channel*) ; 
 int /*<<< orphan*/  PCMTRIG_ABORT ; 
 int /*<<< orphan*/  FUNC2 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_dbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_dbuf*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct pcm_channel *c)
{
    	int missing = 0;
    	struct snd_dbuf *b = c->bufhard;
    	struct snd_dbuf *bs = c->bufsoft;

	FUNC0(c);
	if (FUNC1(c))
		return 0;
	c->flags |= CHN_F_ABORTING;

	c->flags &= ~CHN_F_TRIGGERED;
	/* kill the channel */
	FUNC3(c, PCMTRIG_ABORT);
	FUNC5(b, 0);
	if (!(c->flags & CHN_F_VIRTUAL))
		FUNC2(c);
    	missing = FUNC4(bs);

	c->flags &= ~CHN_F_ABORTING;
	return missing;
}