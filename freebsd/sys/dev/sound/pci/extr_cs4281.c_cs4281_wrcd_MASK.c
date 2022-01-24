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
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  CS4281PCI_ACCAD ; 
 int /*<<< orphan*/  CS4281PCI_ACCDA ; 
 int /*<<< orphan*/  CS4281PCI_ACCTL ; 
 int CS4281PCI_ACCTL_DCV ; 
 int CS4281PCI_ACCTL_ESYN ; 
 int CS4281PCI_ACCTL_VFRM ; 
 scalar_t__ FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(kobj_t obj, void *devinfo, int regno, u_int32_t data)
{
    struct sc_info *sc = (struct sc_info *)devinfo;
    int codecno;

    codecno = regno >> 8;
    regno &= 0xff;

    FUNC1(sc, CS4281PCI_ACCAD, regno);
    FUNC1(sc, CS4281PCI_ACCDA, data);
    FUNC1(sc, CS4281PCI_ACCTL, CS4281PCI_ACCTL_ESYN |
	      CS4281PCI_ACCTL_VFRM | CS4281PCI_ACCTL_DCV);

    if (FUNC0(sc, CS4281PCI_ACCTL, CS4281PCI_ACCTL_DCV, 250) == 0) {
	FUNC2(sc->dev,"cs4281_wrcd: DCV did not go\n");
    }

    return 0;
}