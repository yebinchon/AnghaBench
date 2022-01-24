#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct svc_rpc_gss_client_list {int dummy; } ;
struct TYPE_3__ {unsigned long ci_hostid; size_t ci_id; int /*<<< orphan*/  ci_boottime; } ;
struct svc_rpc_gss_client {TYPE_1__ cl_id; scalar_t__ cl_expiration; int /*<<< orphan*/  cl_locked; int /*<<< orphan*/  cl_state; int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_refs; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_NEW ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rpc_gss_client_list*,struct svc_rpc_gss_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cl_alllink ; 
 int /*<<< orphan*/  cl_link ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 struct svc_rpc_gss_client* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rpc_gss_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  svc_rpc_gss_client_count ; 
 struct svc_rpc_gss_client_list* svc_rpc_gss_client_hash ; 
 size_t svc_rpc_gss_client_hash_size ; 
 struct svc_rpc_gss_client_list svc_rpc_gss_clients ; 
 int /*<<< orphan*/  svc_rpc_gss_lock ; 
 int /*<<< orphan*/  svc_rpc_gss_next_clientid ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ time_uptime ; 

__attribute__((used)) static struct svc_rpc_gss_client *
FUNC10(void)
{
	struct svc_rpc_gss_client *client;
	struct svc_rpc_gss_client_list *list;
	struct timeval boottime;
	unsigned long hostid;

	FUNC6("in svc_rpc_gss_create_client()");

	client = FUNC3(sizeof(struct svc_rpc_gss_client));
	FUNC4(client, 0, sizeof(struct svc_rpc_gss_client));

	/*
	 * Set the initial value of cl_refs to two.  One for the caller
	 * and the other to hold onto the client structure until it expires.
	 */
	FUNC5(&client->cl_refs, 2);
	FUNC7(&client->cl_lock, "GSS-client");
	FUNC2(curthread->td_ucred, &hostid);
	client->cl_id.ci_hostid = hostid;
	FUNC1(&boottime);
	client->cl_id.ci_boottime = boottime.tv_sec;
	client->cl_id.ci_id = svc_rpc_gss_next_clientid++;

	/*
	 * Start the client off with a short expiration time. We will
	 * try to get a saner value from the client creds later.
	 */
	client->cl_state = CLIENT_NEW;
	client->cl_locked = FALSE;
	client->cl_expiration = time_uptime + 5*60;

	list = &svc_rpc_gss_client_hash[client->cl_id.ci_id % svc_rpc_gss_client_hash_size];
	FUNC8(&svc_rpc_gss_lock);
	FUNC0(list, client, cl_link);
	FUNC0(&svc_rpc_gss_clients, client, cl_alllink);
	svc_rpc_gss_client_count++;
	FUNC9(&svc_rpc_gss_lock);
	return (client);
}