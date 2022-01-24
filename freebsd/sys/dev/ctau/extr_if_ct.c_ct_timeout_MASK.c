#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ bd; TYPE_2__* chan; } ;
typedef  TYPE_1__ drv_t ;
typedef  int /*<<< orphan*/  bdrv_t ;
struct TYPE_5__ {scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ M_G703 ; 
 int NCHAN ; 
 int NCTAU ; 
 int /*<<< orphan*/ ** adapter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),int /*<<< orphan*/ ) ; 
 TYPE_1__** channel ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  timeout_handle ; 

__attribute__((used)) static void FUNC6 (void *arg)
{
	drv_t *d;
	int s, i, k;

	for (i = 0; i < NCTAU; ++i) {
		if (adapter[i] == NULL)
			continue;
		for (k = 0; k < NCHAN; k++) {
			d = channel[i * NCHAN + k];
			if (! d)
				continue;
			if (d->chan->mode != M_G703)
				continue;
			s = FUNC4 ();
			FUNC0 ((bdrv_t *)d->bd);
			FUNC3 (d->chan);
			FUNC1 ((bdrv_t *)d->bd);
			FUNC5 (s);
		}
	}
	
	FUNC2 (&timeout_handle, hz, ct_timeout, 0);
}