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
struct mlx5_uuar_info {int /*<<< orphan*/ * count; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct mlx5_uuar_info*) ; 
 int FUNC1 (struct mlx5_uuar_info*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlx5_uuar_info *uuari)
{
	int i;

	for (i = FUNC0(uuari); i < FUNC1(uuari); i = FUNC2(i)) {
		if (!FUNC4(i, uuari->bitmap)) {
			FUNC3(i, uuari->bitmap);
			uuari->count[i]++;
			return i;
		}
	}

	return -ENOMEM;
}