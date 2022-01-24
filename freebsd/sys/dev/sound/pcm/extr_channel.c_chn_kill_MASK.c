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
struct pcm_channel {int /*<<< orphan*/  flags; int /*<<< orphan*/  devinfo; int /*<<< orphan*/  methods; struct snd_dbuf* bufsoft; struct snd_dbuf* bufhard; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHN_F_DEAD ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 scalar_t__ FUNC2 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcm_channel*) ; 
 int /*<<< orphan*/  PCMTRIG_ABORT ; 
 int /*<<< orphan*/  FUNC4 (struct pcm_channel*) ; 
 scalar_t__ FUNC5 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_dbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_dbuf*) ; 

int
FUNC9(struct pcm_channel *c)
{
    	struct snd_dbuf *b = c->bufhard;
    	struct snd_dbuf *bs = c->bufsoft;

	if (FUNC2(c)) {
		FUNC1(c);
		FUNC6(c, PCMTRIG_ABORT);
		FUNC3(c);
	}
	while (FUNC5(c) == 0)
		;
	if (FUNC0(c->methods, c->devinfo))
		FUNC8(b);
	FUNC7(bs);
	FUNC7(b);
	FUNC1(c);
	c->flags |= CHN_F_DEAD;
	FUNC4(c);

	return (0);
}