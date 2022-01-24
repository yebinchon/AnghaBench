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
struct sc_pcminfo {int chnum; struct sc_chinfo* chan; } ;
struct sc_info {int /*<<< orphan*/  dev; } ;
struct sc_chinfo {scalar_t__ run; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 struct sc_pcminfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct sc_info *sc)
{
	struct sc_pcminfo *scp;
	struct sc_chinfo *ch;
	device_t *devlist;
	int devcount;
	int i, j;
	int err;

	if ((err = FUNC0(sc->dev, &devlist, &devcount)) != 0)
		goto bad;

	for (i = 0; i < devcount; i++) {
		scp = FUNC1(devlist[i]);
		for (j = 0; j < scp->chnum; j++) {
			ch = &scp->chan[j];
			if (ch->run)
				goto bad;
		}
	}

	FUNC3(devlist, M_TEMP);

	return (0);
bad:

#if 0
	device_printf(sc->dev, "hdspe is running\n");
#endif

	FUNC3(devlist, M_TEMP);

	return (1);
}