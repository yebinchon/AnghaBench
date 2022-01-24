#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ tp_row; int /*<<< orphan*/  tp_col; } ;
struct TYPE_10__ {int /*<<< orphan*/  tp_row; scalar_t__ tp_col; } ;
struct TYPE_13__ {TYPE_5__ tr_end; TYPE_3__ tr_begin; } ;
typedef  TYPE_6__ term_rect_t ;
struct TYPE_11__ {int /*<<< orphan*/  tp_col; } ;
struct TYPE_9__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_8__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct vt_buf {TYPE_4__ vb_scr_size; TYPE_2__ vb_mark_end; TYPE_1__ vb_mark_start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vt_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct vt_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct vt_buf*,TYPE_6__*) ; 
 int FUNC5 (struct vt_buf*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct vt_buf *vb)
{
	term_rect_t area;
	int s, e;

	/* Notify renderer to update marked region. */
	if ((vb->vb_mark_start.tp_col != vb->vb_mark_end.tp_col) ||
	    (vb->vb_mark_start.tp_row != vb->vb_mark_end.tp_row)) {

		s = FUNC5(vb, vb->vb_mark_start.tp_row);
		e = FUNC5(vb, vb->vb_mark_end.tp_row);

		area.tr_begin.tp_col = 0;
		area.tr_begin.tp_row = FUNC1(s, e);

		area.tr_end.tp_col = vb->vb_scr_size.tp_col;
		area.tr_end.tp_row = FUNC0(s, e) + 1;

		FUNC2(vb);
		FUNC4(vb, &area);
		FUNC3(vb);
	}
}