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
struct atiixp_chinfo {int /*<<< orphan*/  flush_bit; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATI_REG_FIFO_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct atiixp_chinfo *ch)
{
	FUNC0(ch->parent, ATI_REG_FIFO_FLUSH, ch->flush_bit);
}