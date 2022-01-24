#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ah_verf; int /*<<< orphan*/  ah_cred; int /*<<< orphan*/ * ah_ops; } ;
struct authnone_private {int /*<<< orphan*/  mcnt; TYPE_1__ no_client; int /*<<< orphan*/  mclient; } ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_MARSHAL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _null_auth ; 
 int /*<<< orphan*/  authnone_ops ; 
 struct authnone_private authnone_private ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *dummy)
{
	struct authnone_private *ap = &authnone_private;
	XDR xdrs;

	ap->no_client.ah_cred = ap->no_client.ah_verf = _null_auth;
	ap->no_client.ah_ops = &authnone_ops;
	FUNC3(&xdrs, ap->mclient, MAX_MARSHAL_SIZE, XDR_ENCODE);
	FUNC2(&xdrs, &ap->no_client.ah_cred);
	FUNC2(&xdrs, &ap->no_client.ah_verf);
	ap->mcnt = FUNC1(&xdrs);
	FUNC0(&xdrs);
}