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
typedef  int /*<<< orphan*/  u8 ;
struct ecore_ll2_info {int dummy; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 struct ecore_ll2_info* FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static struct ecore_ll2_info *
FUNC1(struct ecore_hwfn *p_hwfn,
				 u8 connection_handle)
{
	return FUNC0(p_hwfn, connection_handle,
					 false, false);
}