#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int bus_id; void* bus_type; } ;
struct TYPE_3__ {int config_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_IO_APIC_BASE ; 
 TYPE_2__* busses ; 
 void*** default_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ioapics ; 
 TYPE_1__* mpfps ; 
 int mptable_nbusses ; 
 int /*<<< orphan*/  mptable_parse_apics_and_busses_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)
{

	/* Is this a pre-defined config? */
	if (mpfps->config_type != 0) {
		ioapics[2] = FUNC0(DEFAULT_IO_APIC_BASE, 2, 0);
		busses[0].bus_id = 0;
		busses[0].bus_type = default_data[mpfps->config_type - 1][2];
		if (mptable_nbusses > 1) {
			busses[1].bus_id = 1;
			busses[1].bus_type =
			    default_data[mpfps->config_type - 1][4];
		}
	} else
		FUNC1(mptable_parse_apics_and_busses_handler,
		    NULL);
}