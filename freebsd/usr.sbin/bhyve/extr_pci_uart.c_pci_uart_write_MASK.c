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
struct vmctx {int dummy; } ;
struct pci_devinst {int /*<<< orphan*/  pi_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
	       int baridx, uint64_t offset, int size, uint64_t value)
{

	FUNC0(baridx == 0);
	FUNC0(size == 1);

	FUNC1(pi->pi_arg, offset, value);
}