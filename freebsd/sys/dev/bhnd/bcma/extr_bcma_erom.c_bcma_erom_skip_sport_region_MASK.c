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
struct bcma_erom_sport_region {int dummy; } ;
struct bcma_erom {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bcma_erom*,struct bcma_erom_sport_region*) ; 

__attribute__((used)) static int
FUNC1(struct bcma_erom *erom)
{
	struct bcma_erom_sport_region r;
	return (FUNC0(erom, &r));
}