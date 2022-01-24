#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  phandle_t ;
struct TYPE_3__ {int /*<<< orphan*/  bias; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* jx4780_bias_table ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(phandle_t pincfgxref, uint32_t *bias_value)
{
	phandle_t pincfg_node;
	int i;

	pincfg_node = FUNC1(pincfgxref);
	for (i = 0; i < FUNC2(jx4780_bias_table); i++) {
		if (FUNC0(pincfg_node, jx4780_bias_table[i].name)) {
			*bias_value = jx4780_bias_table[i].bias;
			return 0;
		}
	}

	return -1;
}