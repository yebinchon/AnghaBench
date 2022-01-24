#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gdbcons {scalar_t__ npending; int* buf; int /*<<< orphan*/  flush; } ;
struct consdev {struct gdbcons* cn_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (struct gdbcons*),struct gdbcons*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ calloutok ; 
 int /*<<< orphan*/  FUNC2 (struct gdbcons*) ; 
 int /*<<< orphan*/ * gdb_cur ; 
 scalar_t__ gdb_listening ; 
 scalar_t__ gdbcons_enable ; 
 int hz ; 

__attribute__((used)) static void
FUNC3(struct consdev *cp, int c)
{
	struct gdbcons *gc;

	if (gdbcons_enable && gdb_cur != NULL && gdb_listening) {
		gc = cp->cn_arg;
		if (gc->npending != 0) {
			/*
			 * Cancel any pending callout and flush the
			 * buffer if there's no space for this byte.
			 */
			if (calloutok)
				FUNC1(&gc->flush);
			if (gc->npending == sizeof(gc->buf))
				FUNC2(gc);
		}
		gc->buf[gc->npending++] = c;
		/*
		 * Flush on end of line; this is especially helpful
		 * during boot when we don't have callouts to flush
		 * the buffer.  Otherwise we defer flushing; a 1/4 
		 * second is a guess.
		 */
		if (c == '\n')
			FUNC2(gc);
		else if (calloutok)
			FUNC0(&gc->flush, hz/4, gdb_cnflush, gc);
	}
}