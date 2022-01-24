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
typedef  int /*<<< orphan*/  uint8_t ;
struct table_info {int /*<<< orphan*/  lookup; int /*<<< orphan*/  state; int /*<<< orphan*/  xstate; } ;
struct radix_cfg {int dummy; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OFF_LEN_INET ; 
 int /*<<< orphan*/  OFF_LEN_INET6 ; 
 struct radix_cfg* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ta_lookup_radix ; 

__attribute__((used)) static int
FUNC3(struct ip_fw_chain *ch, void **ta_state, struct table_info *ti,
    char *data, uint8_t tflags)
{
	struct radix_cfg *cfg;

	if (!FUNC2(&ti->state, OFF_LEN_INET))
		return (ENOMEM);
	if (!FUNC2(&ti->xstate, OFF_LEN_INET6)) {
		FUNC1(&ti->state);
		return (ENOMEM);
	}

	cfg = FUNC0(sizeof(struct radix_cfg), M_IPFW, M_WAITOK | M_ZERO);

	*ta_state = cfg;
	ti->lookup = ta_lookup_radix;

	return (0);
}