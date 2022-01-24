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
struct vnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BW_UPCALLS_PERIOD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct vnet*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  V_bw_upcalls_ch ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curvnet ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
    FUNC1((struct vnet *) arg);

    FUNC2();
    FUNC4();
    FUNC3();

    FUNC5(&V_bw_upcalls_ch, BW_UPCALLS_PERIOD, expire_bw_upcalls_send,
	curvnet);
    FUNC0();
}