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
struct snddev_info {int pvchancount; int rvchancount; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snddev_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(struct snddev_info *d, int num)
{
	FUNC0(d);

	if (num < 0)
		return;

	if (num >= 0 && d->pvchancount > num)
		(void)FUNC2(d, PCMDIR_PLAY, num, -1);
	else if (num > 0 && d->pvchancount == 0)
		(void)FUNC2(d, PCMDIR_PLAY, 1, -1);

	if (num >= 0 && d->rvchancount > num)
		(void)FUNC2(d, PCMDIR_REC, num, -1);
	else if (num > 0 && d->rvchancount == 0)
		(void)FUNC2(d, PCMDIR_REC, 1, -1);

	FUNC1(d);
}