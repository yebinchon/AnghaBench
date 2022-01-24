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
struct TYPE_8__ {int flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  sc; int /*<<< orphan*/  cursor_pos; int /*<<< orphan*/  cursor_oldpos; TYPE_2__ curs_attr; TYPE_1__* rndr; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_7__ {int /*<<< orphan*/  (* draw_cursor ) (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int CONS_BLINK_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(scr_stat *scp)
{
    /* assert(scp == scp->sc->cur_scp); */
    FUNC0(scp->sc);
    (*scp->rndr->draw_cursor)(scp, scp->cursor_pos,
			      scp->curs_attr.flags & CONS_BLINK_CURSOR, TRUE,
			      FUNC2(scp, scp->cursor_pos));
    scp->cursor_oldpos = scp->cursor_pos;
    FUNC1(scp->sc);
}