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
struct TYPE_5__ {TYPE_1__* sc; } ;
typedef  TYPE_2__ scr_stat ;
struct TYPE_4__ {int /*<<< orphan*/  adp; } ;

/* Variables and functions */
 int /*<<< orphan*/  mouse_pointer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void 
FUNC1(scr_stat *scp, int x, int y, int on)
{
#ifdef __sparc64__
	vidd_putm(scp->sc->adp, x, y, mouse_pointer,
	    on ? 0xffffffff : 0x0, 22, 12);
#else
	if (on) {
		FUNC0(scp->sc->adp, x, y, mouse_pointer,
		    0xffffffff, 16, 8);
	} else {
		/* XXX: removal is incomplete for h/w cursors and borders. */
	}
#endif
}