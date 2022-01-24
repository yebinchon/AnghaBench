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
struct cam_sim {int dummy; } ;
typedef  int /*<<< orphan*/  IAL_ADAPTER_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void
FUNC2(struct cam_sim *sim)
{
	IAL_ADAPTER_T *pAdapter;

	pAdapter = FUNC0(sim);
	
	FUNC1((void *)FUNC0(sim));
}