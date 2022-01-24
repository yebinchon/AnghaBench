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
typedef  int /*<<< orphan*/  u_short ;
struct vm86frame {int vmf_sp; int /*<<< orphan*/  vmf_ss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline u_short
FUNC2(struct vm86frame *vmf)
{
	u_short x = FUNC1(FUNC0(vmf->vmf_ss, vmf->vmf_sp));

	vmf->vmf_sp += 2;
	return (x);
}