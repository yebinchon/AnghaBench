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
struct mtk_pci_range {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_pci_range*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mtk_pci_range*,struct mtk_pci_range*) ; 

__attribute__((used)) static int
FUNC2(phandle_t node, struct mtk_pci_range *io_space,
    struct mtk_pci_range *mem_space)
{
	int err;

	if ((err = FUNC1(node, io_space, mem_space)) != 0) {
		return (err);
	}

	FUNC0(io_space);
	FUNC0(mem_space);

	return (0);
}