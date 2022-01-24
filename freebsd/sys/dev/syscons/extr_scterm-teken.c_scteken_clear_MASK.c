#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ts_teken; } ;
typedef  TYPE_2__ teken_stat ;
struct TYPE_11__ {TYPE_1__* sc; int /*<<< orphan*/  vtb; TYPE_2__* ts; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_9__ {int /*<<< orphan*/ * scr_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(scr_stat *scp)
{
	teken_stat *ts = scp->ts;

	FUNC1(scp, 0, 0);
	FUNC3(scp, ts);
	FUNC2(&scp->vtb, scp->sc->scr_map[0x20],
		     FUNC4(FUNC5(&ts->ts_teken))
		     << 8);
	FUNC0(scp);
}