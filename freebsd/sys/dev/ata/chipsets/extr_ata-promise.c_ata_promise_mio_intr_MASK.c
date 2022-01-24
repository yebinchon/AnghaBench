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
typedef  scalar_t__ u_int32_t ;
struct ata_pci_controller {int channels; void* chipset_data; TYPE_1__* interrupt; int /*<<< orphan*/  r_res2; } ;
struct ata_channel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* function ) (struct ata_channel*) ;struct ata_channel* argument; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_channel*) ; 

__attribute__((used)) static void
FUNC3(void *data)
{
    struct ata_pci_controller *ctlr = data;
    struct ata_channel *ch;
    u_int32_t vector;
    int unit;

    /*
     * since reading interrupt status register on early "mio" chips
     * clears the status bits we cannot read it for each channel later on
     * in the generic interrupt routine.
     */
    vector = FUNC0(ctlr->r_res2, 0x040);
    FUNC1(ctlr->r_res2, 0x040, vector);
    ctlr->chipset_data = (void *)(uintptr_t)vector;

    for (unit = 0; unit < ctlr->channels; unit++) {
	if ((ch = ctlr->interrupt[unit].argument))
	    ctlr->interrupt[unit].function(ch);
    }

    ctlr->chipset_data = (void *)(uintptr_t)0xffffffff;
}