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
typedef  scalar_t__ cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ rtas_bounce_phys ; 
 scalar_t__ rtas_bounce_virt ; 
 int /*<<< orphan*/  rtas_mtx ; 

__attribute__((used)) static void
FUNC2(cell_t physaddr, void *buf, size_t len)
{
	FUNC1(&rtas_mtx, MA_OWNED);

	if (physaddr == 0)
		return;

	FUNC0(buf, rtas_bounce_virt + (physaddr - rtas_bounce_phys), len);
}