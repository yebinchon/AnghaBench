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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int NUM_WT ; 
 int curr_weight ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * order_weights ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(int32_t ref)
{
	if (curr_weight >= NUM_WT) {
		FUNC0(stderr,"too many weights (max %d)", NUM_WT);
		return;
	}
	order_weights[curr_weight] = ref;
	curr_weight++;
}