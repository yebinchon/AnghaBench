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
struct vt_font {struct vt_font* vf_bytes; struct vt_font** vf_map; int /*<<< orphan*/  vf_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_VTFONT ; 
 unsigned int VFNT_MAPS ; 
 int /*<<< orphan*/  FUNC0 (struct vt_font*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct vt_font *vf)
{
	unsigned int i;

	if (FUNC1(&vf->vf_refcount)) {
		for (i = 0; i < VFNT_MAPS; i++)
			FUNC0(vf->vf_map[i], M_VTFONT);
		FUNC0(vf->vf_bytes, M_VTFONT);
		FUNC0(vf, M_VTFONT);
	}
}