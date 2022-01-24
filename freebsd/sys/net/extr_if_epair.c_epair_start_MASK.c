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
struct ifnet {int dummy; } ;
struct epair_dpcpu {int dummy; } ;

/* Variables and functions */
 struct epair_dpcpu* FUNC0 (int /*<<< orphan*/ ,struct epair_dpcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct epair_dpcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct epair_dpcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp)
{
	struct epair_dpcpu *epair_dpcpu;

	epair_dpcpu = FUNC0(FUNC3(ifp), epair_dpcpu);
	FUNC1(epair_dpcpu);
	FUNC4(ifp);
	FUNC2(epair_dpcpu);
}