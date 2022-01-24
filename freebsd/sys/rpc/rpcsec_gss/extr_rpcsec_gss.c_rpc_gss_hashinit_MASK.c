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

/* Variables and functions */
 int RPC_GSS_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_gss_all ; 
 int /*<<< orphan*/ * rpc_gss_cache ; 
 int /*<<< orphan*/  rpc_gss_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC2(void *dummy)
{
	int i;

	for (i = 0; i < RPC_GSS_HASH_SIZE; i++)
		FUNC0(&rpc_gss_cache[i]);
	FUNC0(&rpc_gss_all);
	FUNC1(&rpc_gss_lock, "rpc_gss_lock");
}