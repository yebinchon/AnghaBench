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
struct ISCI_CONTROLLER {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (struct ISCI_CONTROLLER*) ; 

void FUNC2(struct cam_sim *sim)
{
	struct ISCI_CONTROLLER *controller =
	    (struct ISCI_CONTROLLER *)FUNC0(sim);

	FUNC1(controller);
}