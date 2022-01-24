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
struct TYPE_5__ {int ysize; int /*<<< orphan*/ * history; int /*<<< orphan*/  history_pos; TYPE_1__* sc; int /*<<< orphan*/  xsize; } ;
typedef  TYPE_2__ scr_stat ;
typedef  int /*<<< orphan*/  sc_vtb_t ;
struct TYPE_4__ {int /*<<< orphan*/ * scr_map; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int SC_HISTORY_SIZE ; 
 int SC_NORM_ATTR ; 
 int /*<<< orphan*/  VTB_RINGBUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int extra_history_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(scr_stat *scp, int lines, int prev_ysize, int wait)
{
	/*
	 * syscons unconditionally allocates buffers up to 
	 * SC_HISTORY_SIZE lines or scp->ysize lines, whichever 
	 * is larger. A value greater than that is allowed, 
	 * subject to extra_history_size.
	 */
	sc_vtb_t *history;
	sc_vtb_t *prev_history;
	int cur_lines;				/* current buffer size */
	int min_lines;				/* guaranteed buffer size */
	int delta;				/* lines to put back */

	if (lines <= 0)
		lines = SC_HISTORY_SIZE;	/* use the default value */

	/* make it at least as large as the screen size */
	lines = FUNC2(lines, scp->ysize);

	/* remove the history buffer while we update it */
	history = prev_history = scp->history;
	scp->history = NULL;

	/* calculate the amount of lines to put back to extra_history_size */
	delta = 0;
	if (prev_history) {
		cur_lines = FUNC7(history);
		min_lines = FUNC2(SC_HISTORY_SIZE, prev_ysize);
		if (cur_lines > min_lines)
			delta = cur_lines - min_lines;
	}

	/* lines up to min_lines are always allowed. */
	min_lines = FUNC2(SC_HISTORY_SIZE, scp->ysize);
	if (lines > min_lines) {
		if (lines - min_lines > extra_history_size + delta) {
			/* too many lines are requested */
			scp->history = prev_history;
			return EINVAL;
		}
	}

	/* allocate a new buffer */
	history = (sc_vtb_t *)FUNC3(sizeof(*history),
				     M_DEVBUF,
				     (wait) ? M_WAITOK : M_NOWAIT);
	if (history != NULL) {
		if (lines > min_lines)
			extra_history_size -= lines - min_lines;
		/* XXX error check? */
		FUNC6(history, VTB_RINGBUFFER, scp->xsize, lines,
			    NULL, wait);
		/* FIXME: XXX no good? */
		FUNC4(history, scp->sc->scr_map[0x20],
			     SC_NORM_ATTR << 8);
		if (prev_history != NULL)
			FUNC0(prev_history, history);
		scp->history_pos = FUNC8(history);
	} else {
		scp->history_pos = 0;
	}

	/* destroy the previous buffer */
	if (prev_history != NULL) {
		extra_history_size += delta;
		FUNC5(prev_history);
		FUNC1(prev_history, M_DEVBUF);
	}

	scp->history = history;

	return 0;
}