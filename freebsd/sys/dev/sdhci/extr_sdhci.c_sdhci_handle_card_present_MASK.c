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
struct sdhci_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_slot*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_slot*,int) ; 

void
FUNC3(struct sdhci_slot *slot, bool is_present)
{

	FUNC0(slot);
	FUNC2(slot, is_present);
	FUNC1(slot);
}