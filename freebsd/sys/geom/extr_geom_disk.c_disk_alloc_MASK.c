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
struct disk {int /*<<< orphan*/  d_aliases; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct disk* FUNC1 (int,int) ; 

struct disk *
FUNC2(void)
{
	struct disk *dp;

	dp = FUNC1(sizeof(struct disk), M_WAITOK | M_ZERO);
	FUNC0(&dp->d_aliases);
	return (dp);
}