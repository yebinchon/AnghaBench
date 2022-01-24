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
struct mlx5_uuar_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct mlx5_uuar_info*) ; 

__attribute__((used)) static int FUNC3(struct mlx5_uuar_info *uuari)
{
	int med;
	int i;
	int t;

	med = FUNC2(uuari);
	for (t = 0, i = FUNC0();; i = FUNC1(i)) {
		t++;
		if (t == med)
			return FUNC1(i);
	}

	return 0;
}