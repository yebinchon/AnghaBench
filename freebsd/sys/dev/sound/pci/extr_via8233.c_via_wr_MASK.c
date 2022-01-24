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
struct via_info {int /*<<< orphan*/  sh; int /*<<< orphan*/  st; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC3(struct via_info *via, int regno, uint32_t data, int size)
{

	switch (size) {
	case 1:
		FUNC0(via->st, via->sh, regno, data);
		break;
	case 2:
		FUNC1(via->st, via->sh, regno, data);
		break;
	case 4:
		FUNC2(via->st, via->sh, regno, data);
		break;
	}
}