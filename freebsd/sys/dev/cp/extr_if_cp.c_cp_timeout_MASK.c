#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* board; TYPE_3__* chan; } ;
typedef  TYPE_2__ drv_t ;
typedef  int /*<<< orphan*/  bdrv_t ;
struct TYPE_9__ {int type; } ;
struct TYPE_7__ {scalar_t__ sys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NBRD ; 
 int NCHAN ; 
#define  T_E1 132 
#define  T_E3 131 
#define  T_G703 130 
#define  T_STS1 129 
#define  T_T3 128 
 int /*<<< orphan*/ ** adapter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),int /*<<< orphan*/ ) ; 
 TYPE_2__** channel ; 
 scalar_t__ cp_destroy ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  timeout_handle ; 

__attribute__((used)) static void FUNC8 (void *arg)
{
	drv_t *d;
	int s, i, k;

	for (i = 0; i < NBRD; ++i) {
		if (adapter[i] == NULL)
			continue;
		for (k = 0; k < NCHAN; ++k) {
			s = FUNC6 ();
			if (cp_destroy) {
				FUNC7 (s);
				return;
			}
			d = channel[i * NCHAN + k];
			if (!d) {
				FUNC7 (s);
				continue;
			}
			FUNC0 ((bdrv_t *)d->board->sys);
			switch (d->chan->type) {
			case T_G703:
				FUNC5 (d->chan);
				break;
			case T_E1:
				FUNC3 (d->chan);
				break;
			case T_E3:
			case T_T3:
			case T_STS1:
				FUNC4 (d->chan);
				break;
			default:
				break;
			}
			FUNC1 ((bdrv_t *)d->board->sys);
			FUNC7 (s);
		}
	}
	s = FUNC6 ();
	if (!cp_destroy)
		FUNC2 (&timeout_handle, hz, cp_timeout, 0);
	FUNC7 (s);
}