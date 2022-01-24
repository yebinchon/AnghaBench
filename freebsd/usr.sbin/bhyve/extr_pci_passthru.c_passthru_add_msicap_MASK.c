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
typedef  int /*<<< orphan*/  u_char ;
struct pci_devinst {int dummy; } ;
struct msicap {int dummy; } ;
typedef  int /*<<< orphan*/  msicap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msicap*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int
FUNC3(struct pci_devinst *pi, int msgnum, int nextptr)
{
	int capoff, i;
	struct msicap msicap;
	u_char *capdata;

	FUNC0(&msicap, msgnum, nextptr);

	/*
	 * XXX
	 * Copy the msi capability structure in the last 16 bytes of the
	 * config space. This is wrong because it could shadow something
	 * useful to the device.
	 */
	capoff = 256 - FUNC2(sizeof(msicap), 4);
	capdata = (u_char *)&msicap;
	for (i = 0; i < sizeof(msicap); i++)
		FUNC1(pi, capoff + i, capdata[i]);

	return (capoff);
}