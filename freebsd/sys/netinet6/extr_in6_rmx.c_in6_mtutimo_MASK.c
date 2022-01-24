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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct mtuex_arg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct vnet*) ; 
 int /*<<< orphan*/  MTUTIMO_DEFAULT ; 
 int /*<<< orphan*/  V_rtq_mtutimer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),void*) ; 
 int /*<<< orphan*/  in6_mtuexpire ; 
 int /*<<< orphan*/  in6_mtutimo_setwa ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtuex_arg*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 

__attribute__((used)) static void
FUNC5(void *rock)
{
	FUNC1((struct vnet *) rock);
	struct timeval atv;
	struct mtuex_arg arg;

	FUNC3(AF_INET6, in6_mtutimo_setwa, in6_mtuexpire, &arg);

	atv.tv_sec = MTUTIMO_DEFAULT;
	atv.tv_usec = 0;
	FUNC2(&V_rtq_mtutimer, FUNC4(&atv), in6_mtutimo, rock);
	FUNC0();
}