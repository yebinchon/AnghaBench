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
typedef  int /*<<< orphan*/  xdrproc_t ;
struct TYPE_2__ {scalar_t__ value; } ;
struct rpc_gss_data {int /*<<< orphan*/  gd_lock; TYPE_1__ gd_verf; int /*<<< orphan*/ * gd_clntprincipal; int /*<<< orphan*/ * gd_principal; int /*<<< orphan*/  gd_ucred; int /*<<< orphan*/  gd_clnt; int /*<<< orphan*/  gd_refs; } ;
typedef  struct rpc_gss_data AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (struct rpc_gss_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_RPC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_gss_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_gss_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ xdr_gss_buffer_desc ; 

__attribute__((used)) static void
FUNC10(AUTH *auth)
{
	struct rpc_gss_data	*gd;
	
	FUNC8("in rpc_gss_destroy()");
	
	gd = FUNC0(auth);
	
	if (!FUNC6(&gd->gd_refs))
		return;

	FUNC7(auth, TRUE);
	
	FUNC1(gd->gd_clnt);
	FUNC2(gd->gd_ucred);
	FUNC3(gd->gd_principal, M_RPC);
	if (gd->gd_clntprincipal != NULL)
		FUNC3(gd->gd_clntprincipal, M_RPC);
	if (gd->gd_verf.value)
		FUNC9((xdrproc_t) xdr_gss_buffer_desc,
		    (char *) &gd->gd_verf);
	FUNC5(&gd->gd_lock);

	FUNC4(gd, sizeof(*gd));
	FUNC4(auth, sizeof(*auth));
}