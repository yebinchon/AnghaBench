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
struct vmctx {int dummy; } ;
struct pci_devinst {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_devinst*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vmctx*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
		  int coff, int bytes, uint32_t val)
{
	int pirq_pin;

	if (bytes == 1) {
		pirq_pin = 0;
		if (coff >= 0x60 && coff <= 0x63)
			pirq_pin = coff - 0x60 + 1;
		if (coff >= 0x68 && coff <= 0x6b)
			pirq_pin = coff - 0x68 + 5;
		if (pirq_pin != 0) {
			FUNC2(ctx, pirq_pin, val);
			FUNC0(pi, coff, FUNC1(pirq_pin));
			return (0);
		}
	}
	return (-1);
}