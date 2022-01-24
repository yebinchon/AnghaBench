#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int mouse_oldpos; int xsize; int ysize; int /*<<< orphan*/  sc; int /*<<< orphan*/  status; int /*<<< orphan*/  font_size; int /*<<< orphan*/  font_width; int /*<<< orphan*/  mouse_oldypos; int /*<<< orphan*/  mouse_oldxpos; TYPE_1__* rndr; } ;
typedef  TYPE_2__ scr_stat ;
struct TYPE_7__ {int /*<<< orphan*/  (* draw_mouse ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  MOUSE_VISIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(scr_stat *scp)
{
    int cols, i, rows;

    if (FUNC0(scp))
	return;

    FUNC1(scp->sc);
    (*scp->rndr->draw_mouse)(scp, scp->mouse_oldxpos, scp->mouse_oldypos,
			     FALSE);
    /*
     * To simplify the renderer and ensure undrawing with correct
     * attributes, mark for update a region containing the cursor
     * (usually 2x2 character cells joined by almost a full line o
     * character cells).
     *
     * The renderer should only undraw any pixels outside of the text
     * window (e.g., ones in borders and hardware cursors).
     */
    i = scp->mouse_oldpos;
    FUNC6(scp, i);
    FUNC6(scp, i);
    cols = 1 + FUNC3(10 - 1, scp->font_width); /* up to VGA cursor width 9 */
    cols = FUNC4(cols, 2);	/* in case it is text mode 2x2 char cells */
    cols = FUNC5(cols, scp->xsize - i % scp->xsize);
    rows = 1 + FUNC3(16 - 1, scp->font_size);	/* up to VGA cursor height 16 */
    rows = FUNC4(rows, 2);	/* don't bother reducing 3 to 2 if text */
    rows = FUNC5(rows, scp->ysize - i / scp->xsize);
    FUNC6(scp, i + (rows - 1) * scp->xsize + cols - 1);
    scp->status &= ~MOUSE_VISIBLE;
    FUNC2(scp->sc);
}