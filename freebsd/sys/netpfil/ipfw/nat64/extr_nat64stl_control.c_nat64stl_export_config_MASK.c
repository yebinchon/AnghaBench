#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  set; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  plat_plen; int /*<<< orphan*/  plat_prefix; } ;
struct nat64stl_cfg {int /*<<< orphan*/  map46; int /*<<< orphan*/  map64; TYPE_2__ no; TYPE_1__ base; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  ntlv4; int /*<<< orphan*/  ntlv6; int /*<<< orphan*/  name; int /*<<< orphan*/  set; int /*<<< orphan*/  plen6; int /*<<< orphan*/  prefix6; } ;
typedef  TYPE_3__ ipfw_nat64stl_cfg ;

/* Variables and functions */
 int NAT64STL_FLAGSMASK ; 
 int /*<<< orphan*/  FUNC0 (struct named_object*,int /*<<< orphan*/ *) ; 
 struct named_object* FUNC1 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct ip_fw_chain *ch, struct nat64stl_cfg *cfg,
    ipfw_nat64stl_cfg *uc)
{
	struct named_object *no;

	uc->prefix6 = cfg->base.plat_prefix;
	uc->plen6 = cfg->base.plat_plen;
	uc->flags = cfg->base.flags & NAT64STL_FLAGSMASK;
	uc->set = cfg->no.set;
	FUNC2(uc->name, cfg->no.name, sizeof(uc->name));

	no = FUNC1(ch, cfg->map64);
	FUNC0(no, &uc->ntlv6);
	no = FUNC1(ch, cfg->map46);
	FUNC0(no, &uc->ntlv4);
}