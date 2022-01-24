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
typedef  scalar_t__ u32 ;
struct ecore_hwfn {int dummy; } ;
struct ecore_bmap {scalar_t__ max_count; int /*<<< orphan*/  name; int /*<<< orphan*/  bitmap; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC3(struct ecore_hwfn *p_hwfn,
					      struct ecore_bmap *bmap,
					      u32	       *id_num)
{
	*id_num = FUNC1(bmap->bitmap, bmap->max_count);
	if (*id_num >= bmap->max_count)
		return ECORE_INVAL;

	FUNC2(*id_num, bmap->bitmap);

	FUNC0(p_hwfn, ECORE_MSG_RDMA, "%s bitmap: allocated id %d\n",
		   bmap->name, *id_num);

	return ECORE_SUCCESS;
}