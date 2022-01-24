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
struct rangelock {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (struct rangelock*,void*,struct mtx*,int) ; 

void
FUNC3(struct rangelock *lock, void *cookie, struct mtx *ilk)
{

	FUNC0(lock != NULL && cookie != NULL && ilk != NULL);

	FUNC1(ilk);
	FUNC2(lock, cookie, ilk, true);
}