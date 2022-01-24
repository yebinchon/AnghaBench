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
struct r_rmtcall_args {int /*<<< orphan*/  rmt_args; int /*<<< orphan*/  rmt_proc; int /*<<< orphan*/  rmt_vers; int /*<<< orphan*/  rmt_prog; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t
FUNC4(XDR *xdrs, struct r_rmtcall_args *cap)
{
	/* does not get the address or the arguments */
	if (FUNC2(xdrs, &(cap->rmt_prog)) &&
	    FUNC3(xdrs, &(cap->rmt_vers)) &&
	    FUNC1(xdrs, &(cap->rmt_proc))) {
		return (FUNC0(xdrs, &(cap->rmt_args)));
	}
	return (FALSE);
}