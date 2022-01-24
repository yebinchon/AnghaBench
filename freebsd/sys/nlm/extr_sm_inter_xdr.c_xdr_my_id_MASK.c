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
struct TYPE_3__ {int /*<<< orphan*/  my_proc; int /*<<< orphan*/  my_vers; int /*<<< orphan*/  my_prog; int /*<<< orphan*/  my_name; } ;
typedef  TYPE_1__ my_id ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SM_MAXSTRLEN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool_t
FUNC2(XDR *xdrs, my_id *objp)
{

	if (!FUNC1(xdrs, &objp->my_name, SM_MAXSTRLEN))
		return (FALSE);
	if (!FUNC0(xdrs, &objp->my_prog))
		return (FALSE);
	if (!FUNC0(xdrs, &objp->my_vers))
		return (FALSE);
	if (!FUNC0(xdrs, &objp->my_proc))
		return (FALSE);
	return (TRUE);
}