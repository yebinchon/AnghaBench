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
typedef  int /*<<< orphan*/  term_pos_t ;
struct vt_buf {int vb_flags; int /*<<< orphan*/  vb_cursor; } ;

/* Variables and functions */
 int VBF_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (struct vt_buf*,int /*<<< orphan*/ *) ; 

void
FUNC1(struct vt_buf *vb, const term_pos_t *p)
{
	if (vb->vb_flags & VBF_CURSOR) {
		FUNC0(vb, &vb->vb_cursor);
		vb->vb_cursor = *p;
		FUNC0(vb, &vb->vb_cursor);
	} else {
		vb->vb_cursor = *p;
	}
}