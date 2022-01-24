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
struct ata_channel {scalar_t__ unit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
    struct ata_channel *ch = FUNC2(dev);
    u_int8_t reg71;

    if (((reg71 = FUNC3(FUNC1(dev), 0x71, 1)) &
	 (ch->unit ? 0x08 : 0x04))) {
	FUNC4(FUNC1(dev), 0x71,
			 reg71 & ~(ch->unit ? 0x04 : 0x08), 1);
	return FUNC0(dev);
    }
    return 0;
}