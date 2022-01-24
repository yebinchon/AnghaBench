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
struct mlx5_uuar_info {scalar_t__* count; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_uuar_info*) ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct mlx5_uuar_info *uuari)
{
	int minidx = FUNC1();
	int i;

	for (i = FUNC1(); i < FUNC0(uuari); i = FUNC2(i)) {
		if (uuari->count[i] < uuari->count[minidx])
			minidx = i;
	}

	uuari->count[minidx]++;
	return minidx;
}