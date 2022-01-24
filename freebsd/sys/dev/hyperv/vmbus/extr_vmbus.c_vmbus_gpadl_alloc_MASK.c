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
typedef  scalar_t__ uint32_t ;
struct vmbus_softc {int /*<<< orphan*/  vmbus_gpadl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 

uint32_t
FUNC1(struct vmbus_softc *sc)
{
	uint32_t gpadl;

again:
	gpadl = FUNC0(&sc->vmbus_gpadl, 1); 
	if (gpadl == 0)
		goto again;
	return (gpadl);
}