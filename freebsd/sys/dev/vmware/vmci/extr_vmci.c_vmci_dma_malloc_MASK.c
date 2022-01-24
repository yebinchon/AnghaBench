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
struct vmci_dma_alloc {int dummy; } ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmci_dma_alloc*) ; 
 int /*<<< orphan*/  vmci_sc ; 

int
FUNC1(bus_size_t size, bus_size_t align, struct vmci_dma_alloc *dma)
{

	return (FUNC0(vmci_sc, size, align, dma));
}