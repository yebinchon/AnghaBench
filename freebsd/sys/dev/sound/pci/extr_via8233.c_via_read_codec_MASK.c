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
struct via_info {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int VIA_AC97_CODEC00_VALID ; 
 int /*<<< orphan*/  VIA_AC97_CONTROL ; 
 int FUNC0 (int) ; 
 int VIA_AC97_READ ; 
 int FUNC1 (struct via_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct via_info*) ; 
 scalar_t__ FUNC3 (struct via_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct via_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC5(kobj_t obj, void *addr, int reg)
{
	struct via_info *via = addr;

	if (FUNC2(via))
		return (-1);

	FUNC4(via, VIA_AC97_CONTROL, VIA_AC97_CODEC00_VALID |
	    VIA_AC97_READ | FUNC0(reg), 4);

	if (FUNC2(via))
		return (-1);

	if (FUNC3(via))
		return (-1);

	return (FUNC1(via, VIA_AC97_CONTROL, 2));
}