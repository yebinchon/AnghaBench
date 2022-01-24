#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  slow_intr_mask; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_INT_ENABLE0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg, int ncount)
{
	adapter_t *sc = arg;

	FUNC1(sc);
	FUNC2(sc, A_PL_INT_ENABLE0, sc->slow_intr_mask);
	(void) FUNC0(sc, A_PL_INT_ENABLE0);
}