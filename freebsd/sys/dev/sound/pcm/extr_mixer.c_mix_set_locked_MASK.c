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
typedef  int /*<<< orphan*/  u_int ;
struct snd_mixer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_mixer*,int /*<<< orphan*/ ,int) ; 

int
FUNC1(struct snd_mixer *m, u_int dev, int left, int right)
{
	int level;

	level = (left & 0xFF) | ((right & 0xFF) << 8);

	return (FUNC0(m, dev, level));
}