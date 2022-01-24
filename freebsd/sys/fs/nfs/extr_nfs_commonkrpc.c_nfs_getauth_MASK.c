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
struct ucred {int dummy; } ;
struct nfssockreq {int /*<<< orphan*/  nr_client; } ;
typedef  int /*<<< orphan*/  rpc_gss_service_t ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
#define  AUTH_SYS 131 
#define  RPCSEC_GSS_KRB5 130 
#define  RPCSEC_GSS_KRB5I 129 
#define  RPCSEC_GSS_KRB5P 128 
 int /*<<< orphan*/ * FUNC0 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct ucred*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct ucred*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_gss_svc_integrity ; 
 int /*<<< orphan*/  rpc_gss_svc_none ; 
 int /*<<< orphan*/  rpc_gss_svc_privacy ; 

__attribute__((used)) static AUTH *
FUNC4(struct nfssockreq *nrp, int secflavour, char *clnt_principal,
    char *srv_principal, gss_OID mech_oid, struct ucred *cred)
{
	rpc_gss_service_t svc;
	AUTH *auth;

	switch (secflavour) {
	case RPCSEC_GSS_KRB5:
	case RPCSEC_GSS_KRB5I:
	case RPCSEC_GSS_KRB5P:
		if (!mech_oid) {
			if (!FUNC1("kerberosv5", &mech_oid))
				return (NULL);
		}
		if (secflavour == RPCSEC_GSS_KRB5)
			svc = rpc_gss_svc_none;
		else if (secflavour == RPCSEC_GSS_KRB5I)
			svc = rpc_gss_svc_integrity;
		else
			svc = rpc_gss_svc_privacy;

		if (clnt_principal == NULL)
			auth = FUNC3(nrp->nr_client, cred,
			    srv_principal, mech_oid, svc);
		else {
			auth = FUNC2(nrp->nr_client, cred,
			    clnt_principal, srv_principal, "kerberosv5",
			    svc, NULL, NULL, NULL);
			return (auth);
		}
		if (auth != NULL)
			return (auth);
		/* fallthrough */
	case AUTH_SYS:
	default:
		return (FUNC0(cred));

	}
}