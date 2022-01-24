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
struct snd_dbuf {int /*<<< orphan*/  tmpbuf; } ;
struct pcm_feeder {int dummy; } ;
struct pcm_channel {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (struct pcm_feeder*,struct pcm_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_dbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  SND_FXDIV_MAX ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 unsigned int snd_feeder_maxcycle ; 
 unsigned int snd_feeder_maxfeed ; 
 int /*<<< orphan*/  FUNC4 (struct snd_dbuf*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_dbuf*) ; 
 unsigned int FUNC6 (struct snd_dbuf*) ; 

int
FUNC7(struct snd_dbuf *from, struct snd_dbuf *to, struct pcm_channel *channel, struct pcm_feeder *feeder, unsigned int count)
{
	unsigned int cnt, maxfeed;
#ifdef SND_DIAGNOSTIC
	unsigned int cycle;

	if (count > snd_feeder_maxfeed)
		snd_feeder_maxfeed = count;

	cycle = 0;
#endif

	FUNC1(count > 0, ("can't feed 0 bytes"));

	if (FUNC6(to) < count)
		return (EINVAL);

	maxfeed = FUNC2(SND_FXDIV_MAX, FUNC5(to));

	do {
		cnt = FUNC0(feeder, channel, to->tmpbuf,
		    FUNC3(count, maxfeed), from);
		if (cnt == 0)
			break;
		FUNC4(to, to->tmpbuf, cnt);
		count -= cnt;
#ifdef SND_DIAGNOSTIC
		cycle++;
#endif
	} while (count != 0);

#ifdef SND_DIAGNOSTIC
	if (cycle > snd_feeder_maxcycle)
		snd_feeder_maxcycle = cycle;
#endif

	return (0);
}