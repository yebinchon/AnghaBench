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
struct pf_start_tunnel_config {int /*<<< orphan*/  tunnel_clss_ipgre; int /*<<< orphan*/  tunnel_clss_l2gre; int /*<<< orphan*/  tunnel_clss_ipgeneve; int /*<<< orphan*/  geneve_udp_port; int /*<<< orphan*/  set_geneve_udp_port_flg; int /*<<< orphan*/  tunnel_clss_l2geneve; int /*<<< orphan*/  vxlan_udp_port; int /*<<< orphan*/  set_vxlan_udp_port_flg; int /*<<< orphan*/  tunnel_clss_vxlan; } ;
struct ecore_tunnel_info {int /*<<< orphan*/  ip_gre; int /*<<< orphan*/  l2_gre; int /*<<< orphan*/  ip_geneve; int /*<<< orphan*/  geneve_port; int /*<<< orphan*/  l2_geneve; int /*<<< orphan*/  vxlan_port; int /*<<< orphan*/  vxlan; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
struct TYPE_2__ {struct ecore_tunnel_info tunnel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_tunnel_info*,struct ecore_tunnel_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_tunnel_info*,struct ecore_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_tunnel_info*,struct ecore_tunnel_info*) ; 

__attribute__((used)) static void
FUNC7(struct ecore_hwfn		*p_hwfn,
			       struct ecore_tunnel_info		*p_src,
			       struct pf_start_tunnel_config	*p_tunn_cfg)
{
	struct ecore_tunnel_info *p_tun = &p_hwfn->p_dev->tunnel;

	if (FUNC1(p_hwfn->p_dev)) {
		FUNC0(p_hwfn, true,
			  "A0 chip: tunnel pf start config is not supported\n");
		return;
	}

	if (!p_src)
		return;

	FUNC3(p_tun, p_src, true);
	FUNC5(p_tun, p_src);
	FUNC6(p_tun, p_src);

	FUNC4(&p_tunn_cfg->tunnel_clss_vxlan,
				      &p_tun->vxlan,
				      &p_tunn_cfg->set_vxlan_udp_port_flg,
				      &p_tunn_cfg->vxlan_udp_port,
				      &p_tun->vxlan_port);

	FUNC4(&p_tunn_cfg->tunnel_clss_l2geneve,
				      &p_tun->l2_geneve,
				      &p_tunn_cfg->set_geneve_udp_port_flg,
				      &p_tunn_cfg->geneve_udp_port,
				      &p_tun->geneve_port);

	FUNC2(&p_tunn_cfg->tunnel_clss_ipgeneve,
					&p_tun->ip_geneve);

	FUNC2(&p_tunn_cfg->tunnel_clss_l2gre,
					&p_tun->l2_gre);

	FUNC2(&p_tunn_cfg->tunnel_clss_ipgre,
					&p_tun->ip_gre);
}