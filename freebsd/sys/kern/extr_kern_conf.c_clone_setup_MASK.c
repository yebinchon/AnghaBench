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
struct clonedevs {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct clonedevs* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct clonedevs **cdp)
{

	*cdp = FUNC1(sizeof **cdp, M_DEVBUF, M_WAITOK | M_ZERO);
	FUNC0(&(*cdp)->head);
}