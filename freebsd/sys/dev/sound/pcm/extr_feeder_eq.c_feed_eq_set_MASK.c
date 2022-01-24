#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct pcm_feeder {TYPE_1__* desc; struct feed_eq_info* data; } ;
struct TYPE_6__ {void* gain; } ;
struct TYPE_5__ {void* gain; } ;
struct feed_eq_info {int channels; int align; int state; int /*<<< orphan*/  preamp; TYPE_3__ bass; TYPE_2__ treble; void* rate; } ;
struct TYPE_4__ {int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  FEEDEQ_BASS 133 
 int FEEDEQ_BYPASS ; 
#define  FEEDEQ_CHANNELS 132 
 int FEEDEQ_DISABLE ; 
 int FEEDEQ_ENABLE ; 
 void* FUNC1 (int) ; 
#define  FEEDEQ_PREAMP 131 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FEEDEQ_PREAMP_MAX ; 
 int FEEDEQ_PREAMP_MIN ; 
#define  FEEDEQ_RATE 130 
#define  FEEDEQ_STATE 129 
#define  FEEDEQ_TREBLE 128 
 int FEEDEQ_UNKNOWN ; 
 int SND_CHN_MAX ; 
 int SND_CHN_MIN ; 
 int /*<<< orphan*/  FUNC3 (struct feed_eq_info*) ; 
 int FUNC4 (struct feed_eq_info*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct pcm_feeder *f, int what, int value)
{
	struct feed_eq_info *info;

	info = f->data;

	switch (what) {
	case FEEDEQ_CHANNELS:
		if (value < SND_CHN_MIN || value > SND_CHN_MAX)
			return (EINVAL);
		info->channels = (uint32_t)value;
		info->align = info->channels * FUNC0(f->desc->in);
		FUNC3(info);
		break;
	case FEEDEQ_RATE:
		if (FUNC5(value) == 0)
			return (EINVAL);
		info->rate = (uint32_t)value;
		if (info->state == FEEDEQ_UNKNOWN)
			info->state = FEEDEQ_ENABLE;
		return (FUNC4(info));
		break;
	case FEEDEQ_TREBLE:
	case FEEDEQ_BASS:
		if (value < 0 || value > 100)
			return (EINVAL);
		if (what == FEEDEQ_TREBLE)
			info->treble.gain = FUNC1(value);
		else
			info->bass.gain = FUNC1(value);
		break;
	case FEEDEQ_PREAMP:
		if (value < FEEDEQ_PREAMP_MIN || value > FEEDEQ_PREAMP_MAX)
			return (EINVAL);
		info->preamp = FUNC2(value);
		break;
	case FEEDEQ_STATE:
		if (!(value == FEEDEQ_BYPASS || value == FEEDEQ_ENABLE ||
		    value == FEEDEQ_DISABLE))
			return (EINVAL);
		info->state = value;
		FUNC3(info);
		break;
	default:
		return (EINVAL);
		break;
	}

	return (0);
}