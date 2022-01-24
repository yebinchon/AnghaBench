#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ata_pci_controller {TYPE_1__* interrupt; int /*<<< orphan*/  r_res1; } ;
struct TYPE_2__ {int /*<<< orphan*/  argument; int /*<<< orphan*/  (* function ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *data)
{
	struct ata_pci_controller *ctrl = data;

	FUNC1(ctrl->r_res1, 0x28, FUNC0(ctrl->r_res1, 0x28));
	ctrl->interrupt[0].function(ctrl->interrupt[0].argument);
}