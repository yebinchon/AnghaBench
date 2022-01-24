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
struct ata_pci_controller {TYPE_1__* chip; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {char* text; int /*<<< orphan*/  max_dma; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,char*) ; 

void
FUNC5(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC2(dev);
    char buffer[128];

    FUNC4(buffer, "%s %s %s controller",
            FUNC1(dev), ctlr->chip->text, 
            FUNC0(ctlr->chip->max_dma));
    FUNC3(dev, buffer);
}