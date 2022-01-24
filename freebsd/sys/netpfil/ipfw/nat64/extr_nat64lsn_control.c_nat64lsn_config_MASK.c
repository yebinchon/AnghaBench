#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sockopt_data {int valsize; TYPE_1__* sopt; } ;
struct TYPE_10__ {int flags; } ;
struct nat64lsn_cfg {TYPE_3__ base; int /*<<< orphan*/  st_icmp_ttl; int /*<<< orphan*/  st_udp_ttl; int /*<<< orphan*/  st_estab_ttl; int /*<<< orphan*/  st_close_ttl; int /*<<< orphan*/  st_syn_ttl; int /*<<< orphan*/  pg_delete_delay; int /*<<< orphan*/  host_delete_delay; int /*<<< orphan*/  jmaxlen; int /*<<< orphan*/  states_chunks; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_9__ {scalar_t__ set; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {TYPE_2__ ntlv; } ;
typedef  TYPE_4__ ipfw_obj_header ;
struct TYPE_12__ {int flags; int /*<<< orphan*/  st_icmp_ttl; int /*<<< orphan*/  st_udp_ttl; int /*<<< orphan*/  st_estab_ttl; int /*<<< orphan*/  st_close_ttl; int /*<<< orphan*/  st_syn_ttl; int /*<<< orphan*/  pg_delete_delay; int /*<<< orphan*/  nh_delete_delay; int /*<<< orphan*/  jmaxlen; int /*<<< orphan*/  states_chunks; } ;
typedef  TYPE_5__ ipfw_nat64lsn_cfg ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;
struct TYPE_8__ {scalar_t__ sopt_dir; } ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ IPFW_MAX_SETS ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 int NAT64LSN_FLAGSMASK ; 
 scalar_t__ SOPT_GET ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sockopt_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_fw_chain*,struct nat64lsn_cfg*,TYPE_5__*) ; 
 struct nat64lsn_cfg* FUNC9 (struct namedobj_instance*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC10(struct ip_fw_chain *ch, ip_fw3_opheader *op,
    struct sockopt_data *sd)
{
	ipfw_obj_header *oh;
	ipfw_nat64lsn_cfg *uc;
	struct nat64lsn_cfg *cfg;
	struct namedobj_instance *ni;

	if (sd->valsize != sizeof(*oh) + sizeof(*uc))
		return (EINVAL);

	oh = (ipfw_obj_header *)FUNC6(sd,
	    sizeof(*oh) + sizeof(*uc));
	uc = (ipfw_nat64lsn_cfg *)(oh + 1);

	if (FUNC5(oh->ntlv.name) != 0 ||
	    oh->ntlv.set >= IPFW_MAX_SETS)
		return (EINVAL);

	ni = FUNC0(ch);
	if (sd->sopt->sopt_dir == SOPT_GET) {
		FUNC1(ch);
		cfg = FUNC9(ni, oh->ntlv.name, oh->ntlv.set);
		if (cfg == NULL) {
			FUNC2(ch);
			return (ENOENT);
		}
		FUNC8(ch, cfg, uc);
		FUNC2(ch);
		return (0);
	}

	FUNC7(uc);

	FUNC3(ch);
	cfg = FUNC9(ni, oh->ntlv.name, oh->ntlv.set);
	if (cfg == NULL) {
		FUNC4(ch);
		return (ENOENT);
	}

	/*
	 * For now allow to change only following values:
	 *  jmaxlen, nh_del_age, pg_del_age, tcp_syn_age, tcp_close_age,
	 *  tcp_est_age, udp_age, icmp_age, flags, states_chunks.
	 */

	cfg->states_chunks = uc->states_chunks;
	cfg->jmaxlen = uc->jmaxlen;
	cfg->host_delete_delay = uc->nh_delete_delay;
	cfg->pg_delete_delay = uc->pg_delete_delay;
	cfg->st_syn_ttl = uc->st_syn_ttl;
	cfg->st_close_ttl = uc->st_close_ttl;
	cfg->st_estab_ttl = uc->st_estab_ttl;
	cfg->st_udp_ttl = uc->st_udp_ttl;
	cfg->st_icmp_ttl = uc->st_icmp_ttl;
	cfg->base.flags &= ~NAT64LSN_FLAGSMASK;
	cfg->base.flags |= uc->flags & NAT64LSN_FLAGSMASK;

	FUNC4(ch);

	return (0);
}