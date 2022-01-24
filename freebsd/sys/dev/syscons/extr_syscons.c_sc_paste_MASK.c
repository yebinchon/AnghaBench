#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct tty {int dummy; } ;
struct TYPE_6__ {TYPE_4__* sc; } ;
typedef  TYPE_2__ scr_stat ;
struct TYPE_7__ {int /*<<< orphan*/ * scr_rmap; TYPE_1__* cur_scp; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 struct tty* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 

void
FUNC4(scr_stat *scp, const u_char *p, int count) 
{
    struct tty *tp;
    u_char *rmap;

    tp = FUNC0(scp->sc, scp->sc->cur_scp->index);
    if (!FUNC1(tp))
	return;
    rmap = scp->sc->scr_rmap;
    for (; count > 0; --count)
	FUNC2(tp, rmap[*p++], 0);
    FUNC3(tp);
}