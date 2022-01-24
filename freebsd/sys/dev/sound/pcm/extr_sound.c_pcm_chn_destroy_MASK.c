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
struct snddev_info {int dummy; } ;
struct pcm_channel {int /*<<< orphan*/  methods; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; struct snddev_info* parentsnddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 
 int FUNC1 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct pcm_channel *ch)
{
	struct snddev_info *d;
	int err;

	d = ch->parentsnddev;
	FUNC0(d);

	err = FUNC1(ch);
	if (err) {
		FUNC2(ch->dev, "chn_kill(%s) failed, err = %d\n",
		    ch->name, err);
		return (err);
	}

	FUNC4(ch->methods, M_DEVBUF);
	FUNC3(ch, M_DEVBUF);

	return (0);
}