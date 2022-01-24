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
struct pcmchan_matrix {int dummy; } ;
struct pcm_feeder {struct feed_volume_info* data; } ;
struct feed_volume_info {int volume_class; int state; } ;

/* Variables and functions */
 int EINVAL ; 
 int FEEDVOLUME_BYPASS ; 
#define  FEEDVOLUME_CHANNELS 130 
#define  FEEDVOLUME_CLASS 129 
 int FEEDVOLUME_ENABLE ; 
#define  FEEDVOLUME_STATE 128 
 int SND_CHN_MAX ; 
 int SND_CHN_MIN ; 
 int SND_VOL_C_BEGIN ; 
 int SND_VOL_C_END ; 
 struct pcmchan_matrix* FUNC0 (int) ; 
 int FUNC1 (struct pcm_feeder*,struct pcmchan_matrix*) ; 

__attribute__((used)) static int
FUNC2(struct pcm_feeder *f, int what, int value)
{
	struct feed_volume_info *info;
	struct pcmchan_matrix *m;
	int ret;

	info = f->data;
	ret = 0;

	switch (what) {
	case FEEDVOLUME_CLASS:
		if (value < SND_VOL_C_BEGIN || value > SND_VOL_C_END)
			return (EINVAL);
		info->volume_class = value;
		break;
	case FEEDVOLUME_CHANNELS:
		if (value < SND_CHN_MIN || value > SND_CHN_MAX)
			return (EINVAL);
		m = FUNC0(value);
		if (m == NULL)
			return (EINVAL);
		ret = FUNC1(f, m);
		break;
	case FEEDVOLUME_STATE:
		if (!(value == FEEDVOLUME_ENABLE || value == FEEDVOLUME_BYPASS))
			return (EINVAL);
		info->state = value;
		break;
	default:
		return (EINVAL);
		break;
	}

	return (ret);
}