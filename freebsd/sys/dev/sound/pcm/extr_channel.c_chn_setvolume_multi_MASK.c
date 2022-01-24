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
struct pcm_channel {int dummy; } ;

/* Variables and functions */
 int SND_CHN_LEFT_MASK ; 
 int SND_CHN_RIGHT_MASK ; 
 int SND_CHN_T_MAX ; 
 int FUNC0 (struct pcm_channel*,int,int,int) ; 

int
FUNC1(struct pcm_channel *c, int vc, int left, int right,
    int center)
{
	int i, ret;

	ret = 0;

	for (i = 0; i < SND_CHN_T_MAX; i++) {
		if ((1 << i) & SND_CHN_LEFT_MASK)
			ret |= FUNC0(c, vc, i, left);
		else if ((1 << i) & SND_CHN_RIGHT_MASK)
			ret |= FUNC0(c, vc, i, right) << 8;
		else
			ret |= FUNC0(c, vc, i, center) << 16;
	}

	return (ret);
}