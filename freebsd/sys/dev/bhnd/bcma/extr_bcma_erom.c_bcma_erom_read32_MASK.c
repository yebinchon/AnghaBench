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
struct bcma_erom {int offset; } ;

/* Variables and functions */
 int FUNC0 (struct bcma_erom*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct bcma_erom *erom, uint32_t *entry)
{
	int error;

	if ((error = FUNC0(erom, entry)) == 0)
		erom->offset += 4;

	return (error);
}