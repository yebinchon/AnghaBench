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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct ACPIsdt {int len; } ;

/* Variables and functions */
 struct ACPIsdt* FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ACPIsdt *
FUNC1(vm_offset_t pa)
{
	struct	ACPIsdt *sp;

	sp = FUNC0(pa, sizeof(struct ACPIsdt));
	sp = FUNC0(pa, sp->len);
	return (sp);
}