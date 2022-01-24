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
typedef  int u_int32_t ;
struct ata_pci_controller {int channels; int /*<<< orphan*/  r_res2; TYPE_1__* interrupt; } ;
struct ata_channel {int unit; } ;
struct TYPE_2__ {struct ata_channel* argument; int /*<<< orphan*/  (* function ) (struct ata_channel*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ ATA_PDC_APKT_OFFSET ; 
 int ATA_PDC_CHN_OFFSET ; 
 scalar_t__ ATA_PDC_HPKT_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (struct ata_pci_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_pci_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_channel*) ; 

__attribute__((used)) static void
FUNC7(void *data)
{
    struct ata_pci_controller *ctlr = data;
    struct ata_channel *ch;
    u_int32_t vector = FUNC0(ctlr->r_res2, 0x000c0480);
    int unit;

    for (unit = 0; unit < ctlr->channels; unit++) {
	if (vector & (1 << (unit + 1)))
	    if ((ch = ctlr->interrupt[unit].argument))
		ctlr->interrupt[unit].function(ch);
	if (vector & (1 << (unit + 5)))
	    if ((ch = ctlr->interrupt[unit].argument))
		FUNC3(ctlr,
				       FUNC4((ch->unit * ATA_PDC_CHN_OFFSET) +
					       ATA_PDC_HPKT_OFFSET));
	if (vector & (1 << (unit + 9))) {
	    FUNC2(ctlr);
	    if ((ch = ctlr->interrupt[unit].argument))
		ctlr->interrupt[unit].function(ch);
	}
	if (vector & (1 << (unit + 13))) {
	    FUNC2(ctlr);
	    if ((ch = ctlr->interrupt[unit].argument))
		FUNC1(ctlr->r_res2, 0x000c0240 + (ch->unit << 7),
			 FUNC4((ch->unit * ATA_PDC_CHN_OFFSET) +
			 ATA_PDC_APKT_OFFSET));
	}
    }
}