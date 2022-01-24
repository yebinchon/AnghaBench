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
typedef  int u_int8_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ATA_VIA8361 ; 
 scalar_t__ ATA_VIA8363 ; 
 scalar_t__ ATA_VIA8371 ; 
 scalar_t__ ATA_VIA8662 ; 
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC7(device_t dev)
{
    device_t *children;
    int nchildren, i;

    if (FUNC0(FUNC1(dev), &children, &nchildren))
	return;

    for (i = 0; i < nchildren; i++) {
	if (FUNC4(children[i]) == ATA_VIA8363 ||
	    FUNC4(children[i]) == ATA_VIA8371 ||
	    FUNC4(children[i]) == ATA_VIA8662 ||
	    FUNC4(children[i]) == ATA_VIA8361) {
	    u_int8_t reg76 = FUNC5(children[i], 0x76, 1);

	    if ((reg76 & 0xf0) != 0xd0) {
		FUNC2(dev,
		"Correcting VIA config for southbridge data corruption bug\n");
		FUNC6(children[i], 0x75, 0x80, 1);
		FUNC6(children[i], 0x76, (reg76 & 0x0f) | 0xd0, 1);
	    }
	    break;
	}
    }
    FUNC3(children, M_TEMP);
}