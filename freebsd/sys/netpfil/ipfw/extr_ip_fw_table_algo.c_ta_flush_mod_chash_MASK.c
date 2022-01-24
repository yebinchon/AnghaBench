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
struct mod_item {int /*<<< orphan*/ * main_ptr6; int /*<<< orphan*/ * main_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void *ta_buf)
{
	struct mod_item *mi;

	mi = (struct mod_item *)ta_buf;
	if (mi->main_ptr != NULL)
		FUNC0(mi->main_ptr, M_IPFW);
	if (mi->main_ptr6 != NULL)
		FUNC0(mi->main_ptr6, M_IPFW);
}