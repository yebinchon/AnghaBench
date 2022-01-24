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
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  w_generation ; 
 int /*<<< orphan*/  w_mtx ; 
 scalar_t__ witness_cold ; 

__attribute__((used)) static void
FUNC1(void)
{

	if (witness_cold == 0)
		FUNC0(&w_mtx, MA_OWNED);
	w_generation++;
}