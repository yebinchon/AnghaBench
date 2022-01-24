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
typedef  void* u_int ;
struct svc_rpc_gss_svc_name {int /*<<< orphan*/  sn_principal; void* sn_version; void* sn_program; int /*<<< orphan*/  sn_cred; void* sn_req_time; int /*<<< orphan*/  sn_mech; } ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  M_RPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct svc_rpc_gss_svc_name*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct svc_rpc_gss_svc_name* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rpc_gss_svc_name*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rpc_gss_svc_name*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sn_link ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svc_rpc_gss_lock ; 
 int /*<<< orphan*/  svc_rpc_gss_svc_names ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

bool_t
FUNC9(const char *principal, const char *mechanism,
    u_int req_time, u_int program, u_int version)
{
	struct svc_rpc_gss_svc_name *sname;
	gss_OID			mech_oid;

	if (!FUNC5(mechanism, &mech_oid))
		return (FALSE);

	sname = FUNC2(sizeof(*sname));
	if (!sname)
		return (FALSE);
	sname->sn_principal = FUNC6(principal, M_RPC);
	sname->sn_mech = mech_oid;
	sname->sn_req_time = req_time;
	sname->sn_cred = GSS_C_NO_CREDENTIAL;
	sname->sn_program = program;
	sname->sn_version = version;

	if (!FUNC4(sname)) {
		FUNC1(sname->sn_principal, M_RPC);
		FUNC3(sname, sizeof(*sname));
		return (FALSE);
	}

	FUNC7(&svc_rpc_gss_lock);
	FUNC0(&svc_rpc_gss_svc_names, sname, sn_link);
	FUNC8(&svc_rpc_gss_lock);

	return (TRUE);
}