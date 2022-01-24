#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snddev_info {int /*<<< orphan*/  status; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ ack_count; scalar_t__ intr_count; int /*<<< orphan*/  hw_info; int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  card; } ;
typedef  TYPE_1__ oss_card_info ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct snddev_info*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct snddev_info* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pcm_devclass ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC9(oss_card_info *si)
{
	struct snddev_info *d;
	int i, ncards;
	
	ncards = 0;

	for (i = 0; pcm_devclass != NULL &&
	    i < FUNC4(pcm_devclass); i++) {
		d = FUNC5(pcm_devclass, i);
		if (!FUNC1(d))
			continue;

		if (ncards++ != si->card)
			continue;

		FUNC3(d);
		FUNC0(d);
		
		FUNC8(si->shortname, FUNC7(d->dev),
		    sizeof(si->shortname));
		FUNC8(si->longname, FUNC6(d->dev),
		    sizeof(si->longname));
		FUNC8(si->hw_info, d->status, sizeof(si->hw_info));
		si->intr_count = si->ack_count = 0;

		FUNC2(d);

		return (0);
	}
	return (ENXIO);
}