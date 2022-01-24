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
struct ac97_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_AD_JACK_SPDIF ; 
 int FUNC0 (struct ac97_info*) ; 
 int FUNC1 (struct ac97_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ac97_info*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ac97_info* codec)
{
	/*
	 * Enable headphone jack sensing.
	 */
	switch (FUNC0(codec)) {
	case 0x02d91014:	/* IBM Thinkcentre */
	case 0x099c103c:	/* HP nx6110 */
		FUNC2(codec, AC97_AD_JACK_SPDIF,
		    FUNC1(codec, AC97_AD_JACK_SPDIF) | 0x0800);
		break;
	default:
		break;
	}
}