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
struct atiixp_chinfo {int enable_bit; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATI_REG_CMD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct atiixp_chinfo *ch)
{
	uint32_t value;

	value = FUNC0(ch->parent, ATI_REG_CMD);
	if (!(value & ch->enable_bit)) {
		value |= ch->enable_bit;
		FUNC1(ch->parent, ATI_REG_CMD, value);
	}
}