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
struct vfbid_tbl {int vfbid; int dest_vc; } ;

/* Variables and functions */
 int FUNC0 (struct vfbid_tbl*) ; 
 struct vfbid_tbl* nlm3xx_vfbid ; 
 scalar_t__ FUNC1 () ; 
 struct vfbid_tbl* nlm_vfbid ; 

int
FUNC2(int vfbid)
{
	int i, nentries;
	struct vfbid_tbl *p;

	if (FUNC1()) {
		nentries = FUNC0(nlm3xx_vfbid);
		p = nlm3xx_vfbid;
	} else {
		nentries = FUNC0(nlm_vfbid);
		p = nlm_vfbid;
	}

	for (i = 0; i < nentries; i++) {
		if (p[i].vfbid == vfbid)
		    return (p[i].dest_vc);
	}

	return (-1);
}