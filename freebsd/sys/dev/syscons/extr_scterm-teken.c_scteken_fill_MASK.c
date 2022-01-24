#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_char ;
struct TYPE_11__ {int tp_col; unsigned int tp_row; } ;
struct TYPE_10__ {unsigned int tp_col; int tp_row; } ;
struct TYPE_12__ {TYPE_3__ tr_end; TYPE_2__ tr_begin; } ;
typedef  TYPE_4__ teken_rect_t ;
typedef  size_t teken_char_t ;
typedef  int /*<<< orphan*/  teken_attr_t ;
struct TYPE_13__ {int xsize; int /*<<< orphan*/  vtb; TYPE_1__* sc; } ;
typedef  TYPE_5__ scr_stat ;
struct TYPE_9__ {size_t* scr_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,unsigned int,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC5(void *arg, const teken_rect_t *r, teken_char_t c,
    const teken_attr_t *a)
{
	scr_stat *scp = arg;
	u_char *map;
	u_char ch;
	unsigned int width;
	int attr, row;

	attr = FUNC4(a) << 8;
#ifdef TEKEN_UTF8
	scteken_get_cp437(&c, &attr);
#endif /* TEKEN_UTF8 */
	ch = c;

	map = scp->sc->scr_map;

	if (r->tr_begin.tp_col == 0 && r->tr_end.tp_col == scp->xsize) {
		/* Single contiguous region to fill. */
		FUNC2(&scp->vtb, r->tr_begin.tp_row * scp->xsize,
		    (r->tr_end.tp_row - r->tr_begin.tp_row) * scp->xsize,
		    map[ch], attr);
	} else {
		/* Fill display line by line. */
		width = r->tr_end.tp_col - r->tr_begin.tp_col;

		for (row = r->tr_begin.tp_row; row < r->tr_end.tp_row; row++) {
			FUNC2(&scp->vtb, r->tr_begin.tp_row *
			    scp->xsize + r->tr_begin.tp_col,
			    width, map[ch], attr);
		}
	}

	/* Mark begin and end positions to be refreshed. */
	FUNC0(scp,
	    r->tr_begin.tp_row * scp->xsize + r->tr_begin.tp_col);
	FUNC0(scp,
	    (r->tr_end.tp_row - 1) * scp->xsize + (r->tr_end.tp_col - 1));
	FUNC1(scp);
}