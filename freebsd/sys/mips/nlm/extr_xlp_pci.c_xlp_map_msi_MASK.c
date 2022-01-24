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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t pcib, device_t dev, int irq, uint64_t *addr,
    uint32_t *data)
{
	int link;

	if (irq < 64) {
		FUNC4(dev, "%s: map_msi for irq %d  - ignored",
		    FUNC3(pcib), irq);
		return (ENXIO);
	}
	link = (irq - 64) / 32;
	*addr = FUNC0(0);
	*data = FUNC1(FUNC2(link));
	return (0);
}