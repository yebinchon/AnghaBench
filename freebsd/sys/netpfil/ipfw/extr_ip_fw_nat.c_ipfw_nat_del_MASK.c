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
struct sockopt {int dummy; } ;
struct ip_fw_chain {int /*<<< orphan*/  nat; } ;
struct cfg_nat {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg_nat*,int /*<<< orphan*/ ) ; 
 struct ip_fw_chain V_layer3_chain ; 
 int /*<<< orphan*/  _next ; 
 int /*<<< orphan*/  FUNC5 (struct ip_fw_chain*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg_nat*) ; 
 struct cfg_nat* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sockopt*,int*,int,int) ; 

__attribute__((used)) static int
FUNC9(struct sockopt *sopt)
{
	struct cfg_nat *ptr;
	struct ip_fw_chain *chain = &V_layer3_chain;
	int i;

	FUNC8(sopt, &i, sizeof i, sizeof i);
	/* XXX validate i */
	FUNC0(chain);
	ptr = FUNC7(&chain->nat, i);
	if (ptr == NULL) {
		FUNC1(chain);
		return (EINVAL);
	}
	FUNC2(chain);
	FUNC4(ptr, _next);
	FUNC5(chain, i);
	FUNC3(chain);
	FUNC1(chain);
	FUNC6(ptr);
	return (0);
}