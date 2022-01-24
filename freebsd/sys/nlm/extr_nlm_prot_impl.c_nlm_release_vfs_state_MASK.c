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
struct vfs_state {scalar_t__ vs_mp; scalar_t__ vs_vp; scalar_t__ vs_vnlocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct vfs_state *vs)
{

	if (vs->vs_vp) {
		if (vs->vs_vnlocked)
			FUNC1(vs->vs_vp);
		else
			FUNC2(vs->vs_vp);
	}
	if (vs->vs_mp)
		FUNC0(vs->vs_mp);
}