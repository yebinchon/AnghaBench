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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_long ;
struct cpuref {int dummy; } ;
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  PS3_LPAR_ID_PME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static u_long
FUNC2(platform_t plat, struct cpuref *cpuref)
{
	uint64_t ticks, node_id, junk;

	FUNC0(PS3_LPAR_ID_PME, 
	    FUNC1("be") >> 32, 0, 0, 0, &node_id, &junk);
	FUNC0(PS3_LPAR_ID_PME,
	    FUNC1("be") >> 32, node_id,
	    FUNC1("clock"), 0, &ticks, &junk);

	return (ticks);
}