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
struct ath_hal_rf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ath_hal_rf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ah_rf_list ; 
 int /*<<< orphan*/  node ; 

int
FUNC1(struct ath_hal_rf *arf)
{

	FUNC0(&ah_rf_list, arf, node);
	return (0);
}