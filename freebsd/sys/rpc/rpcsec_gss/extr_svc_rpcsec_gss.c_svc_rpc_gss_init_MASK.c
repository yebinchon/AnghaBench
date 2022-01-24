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
struct svc_rpc_gss_client_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPCSEC_GSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  rpc_gss_svc_getcred ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svc_rpc_gss ; 
 int /*<<< orphan*/ * svc_rpc_gss_client_hash ; 
 int svc_rpc_gss_client_hash_size ; 
 int /*<<< orphan*/  svc_rpc_gss_clients ; 
 int /*<<< orphan*/  svc_rpc_gss_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	int i;

	svc_rpc_gss_client_hash = FUNC1(sizeof(struct svc_rpc_gss_client_list) * svc_rpc_gss_client_hash_size);
	for (i = 0; i < svc_rpc_gss_client_hash_size; i++)
		FUNC0(&svc_rpc_gss_client_hash[i]);
	FUNC0(&svc_rpc_gss_clients);
	FUNC2(RPCSEC_GSS, svc_rpc_gss, rpc_gss_svc_getcred);
	FUNC3(&svc_rpc_gss_lock, "gsslock");
}