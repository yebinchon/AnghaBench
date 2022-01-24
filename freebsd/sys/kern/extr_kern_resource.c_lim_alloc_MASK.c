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
struct plimit {int /*<<< orphan*/  pl_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PLIMIT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct plimit* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

struct plimit *
FUNC2()
{
	struct plimit *limp;

	limp = FUNC0(sizeof(struct plimit), M_PLIMIT, M_WAITOK);
	FUNC1(&limp->pl_refcnt, 1);
	return (limp);
}