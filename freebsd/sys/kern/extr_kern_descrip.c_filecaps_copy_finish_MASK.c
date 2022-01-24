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
typedef  int /*<<< orphan*/  u_long ;
struct filecaps {int fc_nioctls; int /*<<< orphan*/ * fc_ioctls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC3(const struct filecaps *src, struct filecaps *dst,
    u_long *ioctls)
{
	size_t size;

	*dst = *src;
	if (FUNC1(src->fc_ioctls == NULL)) {
		FUNC0(ioctls == NULL);
		return;
	}

	size = sizeof(src->fc_ioctls[0]) * src->fc_nioctls;
	dst->fc_ioctls = ioctls;
	FUNC2(src->fc_ioctls, dst->fc_ioctls, size);
}