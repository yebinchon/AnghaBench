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
struct ioat_softc {int refcnt; int /*<<< orphan*/  submit_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 

__attribute__((used)) static void
FUNC3(struct ioat_softc *ioat)
{

	FUNC1(&ioat->submit_lock, MA_OWNED);
	FUNC0(ioat->refcnt >= 1, ("refcnt error"));

	if (--ioat->refcnt == 0)
		FUNC2(&ioat->refcnt);
}