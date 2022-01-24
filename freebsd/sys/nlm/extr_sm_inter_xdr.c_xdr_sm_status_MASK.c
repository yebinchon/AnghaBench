#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  priv; int /*<<< orphan*/  state; int /*<<< orphan*/  mon_name; } ;
typedef  TYPE_1__ sm_status ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SM_MAXSTRLEN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool_t
FUNC3(XDR *xdrs, sm_status *objp)
{

	if (!FUNC2(xdrs, &objp->mon_name, SM_MAXSTRLEN))
		return (FALSE);
	if (!FUNC0(xdrs, &objp->state))
		return (FALSE);
	if (!FUNC1(xdrs, objp->priv, 16))
		return (FALSE);
	return (TRUE);
}