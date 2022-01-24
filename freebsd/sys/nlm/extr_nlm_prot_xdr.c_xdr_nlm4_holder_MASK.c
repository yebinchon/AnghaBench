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
struct TYPE_3__ {int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_offset; int /*<<< orphan*/  oh; int /*<<< orphan*/  svid; int /*<<< orphan*/  exclusive; } ;
typedef  TYPE_1__ nlm4_holder ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC4(XDR *xdrs, nlm4_holder *objp)
{

	if (!FUNC0(xdrs, &objp->exclusive))
		return (FALSE);
	if (!FUNC2(xdrs, &objp->svid))
		return (FALSE);
	if (!FUNC1(xdrs, &objp->oh))
		return (FALSE);
	if (!FUNC3(xdrs, &objp->l_offset))
		return (FALSE);
	if (!FUNC3(xdrs, &objp->l_len))
		return (FALSE);
	return (TRUE);
}