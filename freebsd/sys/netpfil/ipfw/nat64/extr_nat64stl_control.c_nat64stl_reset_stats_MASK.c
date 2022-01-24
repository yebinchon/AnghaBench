#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockopt_data {int valsize; scalar_t__ kbuf; } ;
struct TYPE_6__ {int /*<<< orphan*/  cnt; } ;
struct TYPE_7__ {TYPE_2__ stats; } ;
struct nat64stl_cfg {TYPE_3__ base; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_5__ {scalar_t__ set; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_1__ ntlv; } ;
typedef  TYPE_4__ ipfw_obj_header ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ESRCH ; 
 scalar_t__ IPFW_MAX_SETS ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  NAT64STATS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct nat64stl_cfg* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct ip_fw_chain *ch, ip_fw3_opheader *op,
    struct sockopt_data *sd)
{
	struct nat64stl_cfg *cfg;
	ipfw_obj_header *oh;

	if (sd->valsize != sizeof(*oh))
		return (EINVAL);
	oh = (ipfw_obj_header *)sd->kbuf;
	if (FUNC4(oh->ntlv.name) != 0 ||
	    oh->ntlv.set >= IPFW_MAX_SETS)
		return (EINVAL);

	FUNC2(ch);
	cfg = FUNC5(FUNC0(ch), oh->ntlv.name, oh->ntlv.set);
	if (cfg == NULL) {
		FUNC3(ch);
		return (ESRCH);
	}
	FUNC1(cfg->base.stats.cnt, NAT64STATS);
	FUNC3(ch);
	return (0);
}