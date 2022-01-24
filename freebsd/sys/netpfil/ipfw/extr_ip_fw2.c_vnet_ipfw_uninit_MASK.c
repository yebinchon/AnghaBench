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
struct ip_fw_chain {int n_rules; int /*<<< orphan*/ * map; } ;
struct ip_fw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/ * V_ip_fw_ctl_ptr ; 
 scalar_t__ V_ipfw_vnet_ready ; 
 struct ip_fw_chain V_layer3_chain ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC10 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC11 (struct ip_fw_chain*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct ip_fw_chain*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ip_fw_chain*,struct ip_fw**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ip_fw*) ; 
 int /*<<< orphan*/  FUNC17 (struct ip_fw_chain*) ; 

__attribute__((used)) static int
FUNC18(const void *unused)
{
	struct ip_fw *reap;
	struct ip_fw_chain *chain = &V_layer3_chain;
	int i, last;

	V_ipfw_vnet_ready = 0; /* tell new callers to go away */
	/*
	 * disconnect from ipv4, ipv6, layer2 and sockopt.
	 * Then grab, release and grab again the WLOCK so we make
	 * sure the update is propagated and nobody will be in.
	 */
	FUNC12();
	V_ip_fw_ctl_ptr = NULL;

	last = FUNC5(curvnet) ? 1 : 0;

	FUNC1(chain);
	FUNC2(chain);

	FUNC13(0);	/* run the callout_drain */

	FUNC1(chain);

	reap = NULL;
	FUNC3(chain);
	for (i = 0; i < chain->n_rules; i++)
		FUNC15(chain, &reap, chain->map[i]);
	FUNC6(chain->map, M_IPFW);
#ifdef LINEAR_SKIPTO
	ipfw_destroy_skipto_cache(chain);
#endif
	FUNC4(chain);
	FUNC2(chain);
	FUNC11(chain, last);
	FUNC14(chain, last);
	if (reap != NULL)
		FUNC16(reap);
	FUNC17(chain);
	FUNC10(chain);
	FUNC0(chain);
	FUNC13(1);	/* free the remaining parts */
	FUNC8();
	FUNC7(last);
	return (0);
}