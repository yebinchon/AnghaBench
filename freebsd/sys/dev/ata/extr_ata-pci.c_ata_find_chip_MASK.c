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
typedef  int uint8_t ;
struct ata_chip_id {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 struct ata_chip_id* FUNC0 (int /*<<< orphan*/ ,struct ata_chip_id const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

const struct ata_chip_id *
FUNC5(device_t dev, const struct ata_chip_id *index, int slot)
{
    const struct ata_chip_id *idx;
    device_t *children;
    int nchildren, i;
    uint8_t s;

    if (FUNC1(FUNC2(dev), &children, &nchildren))
	return (NULL);

    for (i = 0; i < nchildren; i++) {
	s = FUNC4(children[i]);
	if ((slot >= 0 && s == slot) || (slot < 0 && s <= -slot)) {
	    idx = FUNC0(children[i], index);
	    if (idx != NULL) {
		FUNC3(children, M_TEMP);
		return (idx);
	    }
	}
    }
    FUNC3(children, M_TEMP);
    return (NULL);
}