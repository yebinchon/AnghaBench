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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int PCIM_MSIX_BIR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PCIR_MSIX_PBA ; 
 scalar_t__ PCIR_MSIX_TABLE ; 
 int /*<<< orphan*/  PCIY_MSIX ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint8_t *table_bar, uint8_t *pba_bar)
{
	int cap_offset = 0, ret;
	uint32_t val;

	if ((table_bar == NULL) || (pba_bar == NULL))
		return (EINVAL);

	ret = FUNC1(dev, PCIY_MSIX, &cap_offset);
	if (ret != 0)
		return (EINVAL);

	val = FUNC2(dev, cap_offset + PCIR_MSIX_TABLE, 4);
	*table_bar = FUNC0(val & PCIM_MSIX_BIR_MASK);

	val = FUNC2(dev, cap_offset + PCIR_MSIX_PBA, 4);
	*pba_bar = FUNC0(val & PCIM_MSIX_BIR_MASK);

	return (0);
}