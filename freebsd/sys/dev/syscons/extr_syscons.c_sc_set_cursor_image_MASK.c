#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; void* height; void* base; } ;
struct TYPE_8__ {int /*<<< orphan*/  sc; TYPE_2__ curs_attr; TYPE_1__* rndr; void* font_size; TYPE_2__ base_curs_attr; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_cursor ) (TYPE_3__*,void*,void*,int) ;} ;

/* Variables and functions */
 int CONS_BLINK_CURSOR ; 
 int CONS_CHAR_CURSOR ; 
 int CONS_HIDDEN_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,void*,void*,int) ; 

void
FUNC4(scr_stat *scp)
{
    scp->curs_attr = scp->base_curs_attr;
    if (scp->curs_attr.flags & CONS_HIDDEN_CURSOR) {
	/* hidden cursor is internally represented as zero-height underline */
	scp->curs_attr.flags = CONS_CHAR_CURSOR;
	scp->curs_attr.base = scp->curs_attr.height = 0;
    } else if (scp->curs_attr.flags & CONS_CHAR_CURSOR) {
	scp->curs_attr.base = FUNC2(scp->base_curs_attr.base,
				  scp->font_size - 1);
	scp->curs_attr.height = FUNC2(scp->base_curs_attr.height,
				    scp->font_size - scp->curs_attr.base);
    } else {	/* block cursor */
	scp->curs_attr.base = 0;
	scp->curs_attr.height = scp->font_size;
    }

    /* assert(scp == scp->sc->cur_scp); */
    FUNC0(scp->sc);
    (*scp->rndr->set_cursor)(scp, scp->curs_attr.base, scp->curs_attr.height,
			     scp->curs_attr.flags & CONS_BLINK_CURSOR);
    FUNC1(scp->sc);
}