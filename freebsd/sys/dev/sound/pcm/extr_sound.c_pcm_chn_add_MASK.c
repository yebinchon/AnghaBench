#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snddev_info {int /*<<< orphan*/  devcount; int /*<<< orphan*/  rvchancount; int /*<<< orphan*/  reccount; int /*<<< orphan*/  pvchancount; int /*<<< orphan*/  playcount; } ;
struct pcm_channel {scalar_t__ direction; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcm; } ;

/* Variables and functions */
 int FUNC0 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*,struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ PCMDIR_PLAY ; 
 scalar_t__ PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC3 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct snddev_info*) ; 
#define  SND_DEV_DSPHW_PLAY 131 
#define  SND_DEV_DSPHW_REC 130 
#define  SND_DEV_DSPHW_VPLAY 129 
#define  SND_DEV_DSPHW_VREC 128 
 TYPE_1__ channels ; 

int
FUNC5(struct snddev_info *d, struct pcm_channel *ch)
{
	FUNC3(d);
	FUNC4(d);
	FUNC2(ch != NULL && (ch->direction == PCMDIR_PLAY ||
	    ch->direction == PCMDIR_REC), ("Invalid pcm channel"));

	FUNC1(d, ch, channels.pcm);

	switch (FUNC0(ch)) {
	case SND_DEV_DSPHW_PLAY:
		d->playcount++;
		break;
	case SND_DEV_DSPHW_VPLAY:
		d->pvchancount++;
		break;
	case SND_DEV_DSPHW_REC:
		d->reccount++;
		break;
	case SND_DEV_DSPHW_VREC:
		d->rvchancount++;
		break;
	default:
		break;
	}

	d->devcount++;

	return (0);
}