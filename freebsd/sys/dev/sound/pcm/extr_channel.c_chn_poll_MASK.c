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
struct thread {int dummy; } ;
struct snd_dbuf {int dummy; } ;
struct pcm_channel {int flags; struct snd_dbuf* bufsoft; } ;

/* Variables and functions */
 int CHN_F_MMAP ; 
 int CHN_F_TRIGGERED ; 
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 scalar_t__ FUNC2 (struct pcm_channel*) ; 
 int FUNC3 (struct pcm_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_dbuf*) ; 

int
FUNC6(struct pcm_channel *c, int ev, struct thread *td)
{
	struct snd_dbuf *bs = c->bufsoft;
	int ret;

	FUNC0(c);

    	if (!(c->flags & (CHN_F_MMAP | CHN_F_TRIGGERED))) {
		ret = FUNC3(c, 1);
		if (ret != 0)
			return (0);
	}

	ret = 0;
	if (FUNC2(c)) {
		FUNC1(c);
		ret = ev;
	} else
		FUNC4(td, FUNC5(bs));

	return (ret);
}