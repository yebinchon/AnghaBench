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
typedef  int uint32_t ;
struct via_info {int /*<<< orphan*/  sh; int /*<<< orphan*/  st; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline uint32_t
FUNC3(struct via_info *via, int regno, int size)
{
	switch (size) {
	case 1:
		return (FUNC0(via->st, via->sh, regno));
	case 2:
		return (FUNC1(via->st, via->sh, regno));
	case 4:
		return (FUNC2(via->st, via->sh, regno));
	default:
		return (0xFFFFFFFF);
	}
}