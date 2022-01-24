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
struct sysctl_oid {int dummy; } ;
struct nlm_host {int nh_refs; int nh_sysid; int nh_grantcookie; int /*<<< orphan*/  nh_sysctl; scalar_t__ nh_monstate; scalar_t__ nh_vers; int /*<<< orphan*/  nh_caller_name; int /*<<< orphan*/  nh_sysid_string; int /*<<< orphan*/  nh_finished; int /*<<< orphan*/  nh_granted; int /*<<< orphan*/  nh_pending; scalar_t__ nh_state; int /*<<< orphan*/  nh_lock; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  MAXNAMELEN ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NLM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ NLM_UNMONITORED ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct nlm_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct nlm_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _vfs_nlm_sysid ; 
 struct nlm_host* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nh_link ; 
 int /*<<< orphan*/  nlm_global_lock ; 
 int /*<<< orphan*/  nlm_host_client_lock_count_sysctl ; 
 int /*<<< orphan*/  nlm_host_lock_count_sysctl ; 
 int /*<<< orphan*/  nlm_hosts ; 
 int /*<<< orphan*/  nlm_next_sysid ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nlm_host *
FUNC17(const char* caller_name)
{
	struct nlm_host *host;
	struct sysctl_oid *oid;

	FUNC10(&nlm_global_lock, MA_OWNED);

	FUNC0(1, "NLM: new host %s (sysid %d)\n",
	    caller_name, nlm_next_sysid);
	host = FUNC9(sizeof(struct nlm_host), M_NLM, M_NOWAIT|M_ZERO);
	if (!host)
		return (NULL);
	FUNC11(&host->nh_lock, "nh_lock", NULL, MTX_DEF);
	host->nh_refs = 1;
	FUNC15(host->nh_caller_name, caller_name, MAXNAMELEN);
	host->nh_sysid = nlm_next_sysid++;
	FUNC14(host->nh_sysid_string, sizeof(host->nh_sysid_string),
		"%d", host->nh_sysid);
	host->nh_vers = 0;
	host->nh_state = 0;
	host->nh_monstate = NLM_UNMONITORED;
	host->nh_grantcookie = 1;
	FUNC7(&host->nh_pending);
	FUNC7(&host->nh_granted);
	FUNC7(&host->nh_finished);
	FUNC8(&nlm_hosts, host, nh_link);

	FUNC13(&nlm_global_lock);

	FUNC16(&host->nh_sysctl);
	oid = FUNC1(&host->nh_sysctl,
	    FUNC6(_vfs_nlm_sysid),
	    OID_AUTO, host->nh_sysid_string, CTLFLAG_RD, NULL, "");
	FUNC3(&host->nh_sysctl, FUNC5(oid), OID_AUTO,
	    "hostname", CTLFLAG_RD, host->nh_caller_name, 0, "");
	FUNC4(&host->nh_sysctl, FUNC5(oid), OID_AUTO,
	    "version", CTLFLAG_RD, &host->nh_vers, 0, "");
	FUNC4(&host->nh_sysctl, FUNC5(oid), OID_AUTO,
	    "monitored", CTLFLAG_RD, &host->nh_monstate, 0, "");
	FUNC2(&host->nh_sysctl, FUNC5(oid), OID_AUTO,
	    "lock_count", CTLTYPE_INT | CTLFLAG_RD, host, 0,
	    nlm_host_lock_count_sysctl, "I", "");
	FUNC2(&host->nh_sysctl, FUNC5(oid), OID_AUTO,
	    "client_lock_count", CTLTYPE_INT | CTLFLAG_RD, host, 0,
	    nlm_host_client_lock_count_sysctl, "I", "");

	FUNC12(&nlm_global_lock);

	return (host);
}