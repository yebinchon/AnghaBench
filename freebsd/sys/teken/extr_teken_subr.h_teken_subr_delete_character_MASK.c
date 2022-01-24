#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ tp_col; } ;
struct TYPE_12__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_16__ {int /*<<< orphan*/  t_curattr; TYPE_3__ t_winsize; TYPE_11__ t_cursor; } ;
typedef  TYPE_4__ teken_t ;
struct TYPE_14__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_13__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_17__ {TYPE_2__ tr_begin; TYPE_1__ tr_end; } ;
typedef  TYPE_5__ teken_rect_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLANK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__ const*,TYPE_5__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__ const*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(const teken_t *t, unsigned int ncols)
{
	teken_rect_t tr;

	tr.tr_begin.tp_row = t->t_cursor.tp_row;
	tr.tr_end.tp_row = t->t_cursor.tp_row + 1;
	tr.tr_end.tp_col = t->t_winsize.tp_col;

	if (t->t_cursor.tp_col + ncols >= t->t_winsize.tp_col) {
		tr.tr_begin.tp_col = t->t_cursor.tp_col;
	} else {
		/* Copy characters to the left. */
		tr.tr_begin.tp_col = t->t_cursor.tp_col + ncols;
		FUNC0(t, &tr, &t->t_cursor);

		tr.tr_begin.tp_col = t->t_winsize.tp_col - ncols;
	}

	/* Blank trailing columns. */
	FUNC1(t, &tr, BLANK, &t->t_curattr);
}