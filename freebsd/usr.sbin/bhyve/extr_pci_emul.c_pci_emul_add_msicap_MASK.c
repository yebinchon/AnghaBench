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
 int FUNC0 (struct pci_devinst*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msicap*,int,int /*<<< orphan*/ ) ; 

int
FUNC2(struct pci_devinst *pi, int msgnum)
{
	struct msicap msicap;

	FUNC1(&msicap, msgnum, 0);

	return (FUNC0(pi, (u_char *)&msicap, sizeof(msicap)));
}