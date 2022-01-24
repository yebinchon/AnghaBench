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
typedef  int /*<<< orphan*/  uintmax_t ;
struct ktr_fault {int /*<<< orphan*/  type; scalar_t__ vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  sysdecode_vmprot ; 

void
FUNC2(struct ktr_fault *ktr)
{

	FUNC1("0x%jx ", (uintmax_t)ktr->vaddr);
	FUNC0(sysdecode_vmprot, ktr->type);
	FUNC1("\n");
}