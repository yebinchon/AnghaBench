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
struct ata_pci_controller {int (* ch_attach ) (int /*<<< orphan*/ ) ;} ;
struct ata_channel {int attached; intptr_t unit; int /*<<< orphan*/  pm_level; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC4(FUNC3(dev));
    struct ata_channel *ch = FUNC4(dev);
    int error;

    if (ch->attached)
	return (0);
    ch->attached = 1;

    ch->dev = dev;
    ch->unit = (intptr_t)FUNC1(dev);

    FUNC6(FUNC2(dev),
	FUNC5(dev), "pm_level", &ch->pm_level);

    if ((error = ctlr->ch_attach(dev)))
	return error;

    return FUNC0(dev);
}