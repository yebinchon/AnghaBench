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
typedef  int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int,int,int) ; 
 int FUNC1 (int*,int,int,int) ; 

__attribute__((used)) static u32 FUNC2(struct ecore_hwfn *p_hwfn,
									struct ecore_ptt *p_ptt,
									u32 *dump_buf,
									bool dump,
									u32 addr,
									u32 len,
									bool wide_bus)
{
	u32 offset = 0;

	offset += FUNC1(dump_buf, dump, addr, len);
	offset += FUNC0(p_hwfn, p_ptt, dump_buf + offset, dump, addr, len, wide_bus);

	return offset;
}