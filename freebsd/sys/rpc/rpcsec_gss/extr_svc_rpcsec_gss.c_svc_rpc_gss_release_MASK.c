#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct svc_rpc_gss_cookedcred {struct svc_rpc_gss_client* cc_client; } ;
struct svc_rpc_gss_client {int dummy; } ;
struct TYPE_3__ {scalar_t__ svc_ah_private; } ;
typedef  TYPE_1__ SVCAUTH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rpc_gss_client*) ; 

__attribute__((used)) static void
FUNC2(SVCAUTH *auth)
{
	struct svc_rpc_gss_cookedcred *cc;
	struct svc_rpc_gss_client *client;

	FUNC0("in svc_rpc_gss_release()");

	cc = (struct svc_rpc_gss_cookedcred *) auth->svc_ah_private;
	client = cc->cc_client;
	FUNC1(client);
}