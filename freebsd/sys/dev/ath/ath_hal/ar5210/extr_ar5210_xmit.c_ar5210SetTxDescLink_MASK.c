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
struct ath_hal {int dummy; } ;
struct ar5210_desc {int /*<<< orphan*/  ds_link; } ;

/* Variables and functions */
 struct ar5210_desc* FUNC0 (void*) ; 

void
FUNC1(struct ath_hal *ah, void *ds, uint32_t link)
{
	struct ar5210_desc *ads = FUNC0(ds);

	ads->ds_link = link;
}