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
struct pcm_channel {scalar_t__ direction; int flags; struct snd_dbuf* bufhard; } ;

/* Variables and functions */
 int CHN_F_CLOSING ; 
 int CHN_F_TRIGGERED ; 
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMTRIG_ABORT ; 
 int /*<<< orphan*/  FUNC3 (struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_dbuf*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct pcm_channel *c)
{
    	struct snd_dbuf *b = c->bufhard;

	FUNC0(c);
	FUNC2(c->direction == PCMDIR_PLAY, ("chn_flush on bad channel"));
    	FUNC1(FUNC5("chn_flush: c->flags 0x%08x\n", c->flags));

	c->flags |= CHN_F_CLOSING;
	FUNC3(c, 0);
	c->flags &= ~CHN_F_TRIGGERED;
	/* kill the channel */
	FUNC4(c, PCMTRIG_ABORT);
	FUNC6(b, 0);

    	c->flags &= ~CHN_F_CLOSING;
    	return 0;
}