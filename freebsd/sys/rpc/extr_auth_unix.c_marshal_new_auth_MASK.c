#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct audata {int /*<<< orphan*/  au_mpos; int /*<<< orphan*/  au_marshed; } ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_4__ {int /*<<< orphan*/  ah_verf; int /*<<< orphan*/  ah_cred; } ;
typedef  TYPE_1__ AUTH ;

/* Variables and functions */
 struct audata* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAX_AUTH_BYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(AUTH *auth)
{
	XDR	xdr_stream;
	XDR	*xdrs = &xdr_stream;
	struct audata *au;

	au = FUNC0(auth);
	FUNC5(xdrs, au->au_marshed, MAX_AUTH_BYTES, XDR_ENCODE);
	if ((! FUNC4(xdrs, &(auth->ah_cred))) ||
	    (! FUNC4(xdrs, &(auth->ah_verf))))
		FUNC3("auth_none.c - Fatal marshalling problem");
	else
		au->au_mpos = FUNC2(xdrs);
	FUNC1(xdrs);
}