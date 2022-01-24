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

/* Variables and functions */
 int MAXBUSES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** pci_businfo ; 

int
FUNC1(int bus)
{
	FUNC0(bus >= 0 && bus < MAXBUSES);
	return (pci_businfo[bus] != NULL);
}