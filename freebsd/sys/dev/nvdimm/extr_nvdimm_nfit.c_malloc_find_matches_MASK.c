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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ACPI_TABLE_NFIT ;

/* Variables and functions */
 int /*<<< orphan*/  M_NVDIMM ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int) ; 
 void** FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(ACPI_TABLE_NFIT *nfitbl, uint16_t type, uint16_t offset,
    uint64_t mask, uint64_t value, void ***ptrs, int *ptrs_len)
{
	int count;

	count = FUNC0(nfitbl, type, offset, mask, value, NULL, 0);
	*ptrs_len = count;
	if (count == 0) {
		*ptrs = NULL;
		return;
	}
	*ptrs = FUNC1(count, sizeof(void *), M_NVDIMM, M_WAITOK);
	FUNC0(nfitbl, type, offset, mask, value, *ptrs, *ptrs_len);
}