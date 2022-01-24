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

/* Variables and functions */
 int /*<<< orphan*/  M_UIDINFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int maxproc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  uihash ; 
 int /*<<< orphan*/  uihashtbl ; 
 int /*<<< orphan*/  uihashtbl_lock ; 

void
FUNC2()
{

	uihashtbl = FUNC0(maxproc / 16, M_UIDINFO, &uihash);
	FUNC1(&uihashtbl_lock, "uidinfo hash");
}