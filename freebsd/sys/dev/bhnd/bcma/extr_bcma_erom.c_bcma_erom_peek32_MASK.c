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
typedef  int /*<<< orphan*/  uint32_t ;
struct bcma_erom {int offset; int /*<<< orphan*/  eio; } ;

/* Variables and functions */
 int BCMA_EROM_TABLE_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_erom*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC2(struct bcma_erom *erom, uint32_t *entry)
{
	if (erom->offset >= (BCMA_EROM_TABLE_SIZE - sizeof(uint32_t))) {
		FUNC0(erom, "BCMA EROM table missing terminating EOF\n");
		return (EINVAL);
	}

	*entry = FUNC1(erom->eio, erom->offset, 4);
	return (0);
}