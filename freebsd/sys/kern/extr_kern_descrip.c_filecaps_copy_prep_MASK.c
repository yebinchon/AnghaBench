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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_FILECAPS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_long *
FUNC3(const struct filecaps *src)
{
	u_long *ioctls;
	size_t size;

	if (FUNC1(src->fc_ioctls == NULL))
		return (NULL);

	FUNC0(src->fc_nioctls > 0,
	    ("fc_ioctls != NULL, but fc_nioctls=%hd", src->fc_nioctls));

	size = sizeof(src->fc_ioctls[0]) * src->fc_nioctls;
	ioctls = FUNC2(size, M_FILECAPS, M_WAITOK);
	return (ioctls);
}