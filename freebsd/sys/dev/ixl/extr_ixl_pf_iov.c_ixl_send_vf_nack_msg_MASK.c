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
typedef  int /*<<< orphan*/  uint16_t ;
struct ixl_vf {int /*<<< orphan*/  vf_num; } ;
struct ixl_pf {int /*<<< orphan*/  hw; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixl_pf*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ixl_pf *pf, struct ixl_vf *vf, uint16_t op,
    enum i40e_status_code status, const char *file, int line)
{

	FUNC0(pf, 1,
	    "Sending NACK (op=%s[%d], err=%s[%d]) to VF-%d from %s:%d\n",
	    FUNC3(op), op, FUNC1(&pf->hw, status),
	    status, vf->vf_num, file, line);
	FUNC2(pf, vf, op, status, NULL, 0);
}