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
struct opaque_auth {int /*<<< orphan*/  oa_length; int /*<<< orphan*/  oa_base; int /*<<< orphan*/  oa_flavor; } ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAX_AUTH_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC3(XDR *xdrs, struct opaque_auth *ap)
{

	FUNC0(xdrs != NULL);
	FUNC0(ap != NULL);

	if (FUNC2(xdrs, &(ap->oa_flavor)))
		return (FUNC1(xdrs, &ap->oa_base,
			&ap->oa_length, MAX_AUTH_BYTES));
	return (FALSE);
}