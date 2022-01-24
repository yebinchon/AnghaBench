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
struct cfg_nat {int /*<<< orphan*/  lib; int /*<<< orphan*/  redir_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  FUNC1 (struct cfg_nat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg_nat*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct cfg_nat *ptr)
{

	FUNC1(ptr, &ptr->redir_chain);
	FUNC0(ptr->lib);
	FUNC2(ptr, M_IPFW);
}