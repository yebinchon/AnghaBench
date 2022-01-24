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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_REG_DBG_BLOCK_ON ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct ecore_hwfn *p_hwfn,
									   struct ecore_ptt *p_ptt,
									   bool enable)
{
	FUNC0(p_hwfn, p_ptt, DBG_REG_DBG_BLOCK_ON, enable ? 1 : 0);
}