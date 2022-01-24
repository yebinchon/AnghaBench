#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bus_entry_ptr ;
struct TYPE_4__ {int bus_id; int /*<<< orphan*/  bus_type; void* type; } ;

/* Variables and functions */
 void* MPCT_ENTRY_BUS ; 
 int /*<<< orphan*/  MPE_BUSNAME_ISA ; 
 int /*<<< orphan*/  MPE_BUSNAME_LEN ; 
 int /*<<< orphan*/  MPE_BUSNAME_PCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(bus_entry_ptr mpeb)
{

	FUNC1(mpeb, 0, sizeof(*mpeb));
	mpeb->type = MPCT_ENTRY_BUS;
	mpeb->bus_id = 0;
	FUNC0(mpeb->bus_type, MPE_BUSNAME_PCI, MPE_BUSNAME_LEN);
	mpeb++;

	FUNC1(mpeb, 0, sizeof(*mpeb));
	mpeb->type = MPCT_ENTRY_BUS;
	mpeb->bus_id = 1;	
	FUNC0(mpeb->bus_type, MPE_BUSNAME_ISA, MPE_BUSNAME_LEN);
}