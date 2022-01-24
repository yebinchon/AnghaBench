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
struct snd_mixer {int dummy; } ;
struct sb_info {int dummy; } ;
struct sb16_mixent {int bits; unsigned int ofs; scalar_t__ reg; scalar_t__ stereo; } ;

/* Variables and functions */
 struct sb_info* FUNC0 (struct snd_mixer*) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 struct sb16_mixent* sb16_mixtab ; 
 int /*<<< orphan*/  FUNC2 (struct sb_info*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int
FUNC3(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
    	struct sb_info *sb = FUNC0(m);
    	const struct sb16_mixent *e;
    	int max;

	e = &sb16_mixtab[dev];
	max = (1 << e->bits) - 1;

	left = FUNC1(left, max);
	right = FUNC1(right, max);

	FUNC2(sb, e->reg, left << e->ofs);
	if (e->stereo)
		FUNC2(sb, e->reg + 1, right << e->ofs);
	else
		right = left;

	left = (left * 100) / max;
	right = (right * 100) / max;

    	return left | (right << 8);
}