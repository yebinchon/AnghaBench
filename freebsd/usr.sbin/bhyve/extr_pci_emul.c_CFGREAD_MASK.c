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
struct pci_devinst {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_devinst*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_devinst*,int) ; 

__attribute__((used)) static __inline uint32_t
FUNC3(struct pci_devinst *pi, int coff, int bytes)
{

	if (bytes == 1)
		return (FUNC2(pi, coff));
	else if (bytes == 2)
		return (FUNC0(pi, coff));
	else
		return (FUNC1(pi, coff));
}