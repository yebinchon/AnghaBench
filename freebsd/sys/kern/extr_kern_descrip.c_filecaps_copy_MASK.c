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
typedef  struct filecaps {int fc_nioctls; struct filecaps const* fc_ioctls; } const filecaps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_FILECAPS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct filecaps const* FUNC1 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct filecaps const*,struct filecaps const*,size_t) ; 

bool
FUNC3(const struct filecaps *src, struct filecaps *dst, bool locked)
{
	size_t size;

	if (src->fc_ioctls != NULL && !locked)
		return (false);
	FUNC2(dst, src, sizeof(*src));
	if (src->fc_ioctls == NULL)
		return (true);

	FUNC0(src->fc_nioctls > 0,
	    ("fc_ioctls != NULL, but fc_nioctls=%hd", src->fc_nioctls));

	size = sizeof(src->fc_ioctls[0]) * src->fc_nioctls;
	dst->fc_ioctls = FUNC1(size, M_FILECAPS, M_WAITOK);
	FUNC2(dst->fc_ioctls, src->fc_ioctls, size);
	return (true);
}