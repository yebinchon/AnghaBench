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
struct TYPE_2__ {struct svc_rpc_gss_client* client_principal; } ;
struct svc_rpc_gss_client {int len; int /*<<< orphan*/  cl_lock; scalar_t__ cl_cred; TYPE_1__ cl_rawcred; int /*<<< orphan*/  cl_cname; int /*<<< orphan*/  cl_ctx; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_NO_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rpc_gss_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct svc_rpc_gss_client *client)
{
	OM_uint32 min_stat;

	FUNC4("in svc_rpc_gss_destroy_client()");

	if (client->cl_ctx)
		FUNC1(&min_stat,
		    &client->cl_ctx, GSS_C_NO_BUFFER);

	if (client->cl_cname)
		FUNC2(&min_stat, &client->cl_cname);

	if (client->cl_rawcred.client_principal)
		FUNC3(client->cl_rawcred.client_principal,
		    sizeof(*client->cl_rawcred.client_principal)
		    + client->cl_rawcred.client_principal->len);

	if (client->cl_cred)
		FUNC0(client->cl_cred);

	FUNC5(&client->cl_lock);
	FUNC3(client, sizeof(*client));
}