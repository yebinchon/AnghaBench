#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* sc; int /*<<< orphan*/  base_curs_attr; int /*<<< orphan*/  dflt_curs_attr; } ;
typedef  TYPE_2__ scr_stat ;
struct TYPE_8__ {TYPE_2__* cur_scp; } ;

/* Variables and functions */
 int CONS_DEFAULT_CURSOR ; 
 int CONS_RESET_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(scr_stat *scp, int flags, int base, int height)
{
    if ((scp == scp->sc->cur_scp) && !FUNC0(scp))
	FUNC3(scp);

    if (flags & CONS_RESET_CURSOR)
	scp->base_curs_attr = scp->dflt_curs_attr;
    else if (flags & CONS_DEFAULT_CURSOR) {
	FUNC1(&scp->dflt_curs_attr, flags, base, height);
	scp->base_curs_attr = scp->dflt_curs_attr;
    } else
	FUNC1(&scp->base_curs_attr, flags, base, height);

    if ((scp == scp->sc->cur_scp) && !FUNC0(scp)) {
	FUNC4(scp);
	FUNC2(scp);
    }
}