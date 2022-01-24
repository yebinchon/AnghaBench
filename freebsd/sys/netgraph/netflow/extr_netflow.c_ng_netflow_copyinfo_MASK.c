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
struct ng_netflow_info {int /*<<< orphan*/  nfinfo_act_t; int /*<<< orphan*/  nfinfo_inact_t; int /*<<< orphan*/  nfinfo_alloc_fibs; int /*<<< orphan*/  nfinfo_realloc_mbuf; int /*<<< orphan*/  nfinfo_export9_failed; int /*<<< orphan*/  nfinfo_export_failed; int /*<<< orphan*/  nfinfo_alloc_failed; void* nfinfo_used6; void* nfinfo_used; void* nfinfo_inact_exp; void* nfinfo_act_exp; void* nfinfo_spackets6; void* nfinfo_sbytes6; void* nfinfo_spackets; void* nfinfo_sbytes; void* nfinfo_packets6; void* nfinfo_bytes6; void* nfinfo_packets; void* nfinfo_bytes; } ;
typedef  TYPE_1__* priv_p ;
struct TYPE_3__ {int /*<<< orphan*/  nfinfo_act_t; int /*<<< orphan*/  nfinfo_inact_t; int /*<<< orphan*/  nfinfo_alloc_fibs; int /*<<< orphan*/  nfinfo_realloc_mbuf; int /*<<< orphan*/  nfinfo_export9_failed; int /*<<< orphan*/  nfinfo_export_failed; int /*<<< orphan*/  nfinfo_alloc_failed; int /*<<< orphan*/  zone6; int /*<<< orphan*/  zone; int /*<<< orphan*/  nfinfo_inact_exp; int /*<<< orphan*/  nfinfo_act_exp; int /*<<< orphan*/  nfinfo_spackets6; int /*<<< orphan*/  nfinfo_sbytes6; int /*<<< orphan*/  nfinfo_spackets; int /*<<< orphan*/  nfinfo_sbytes; int /*<<< orphan*/  nfinfo_packets6; int /*<<< orphan*/  nfinfo_bytes6; int /*<<< orphan*/  nfinfo_packets; int /*<<< orphan*/  nfinfo_bytes; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(priv_p priv, struct ng_netflow_info *i)
{

	i->nfinfo_bytes = FUNC0(priv->nfinfo_bytes);
	i->nfinfo_packets = FUNC0(priv->nfinfo_packets);
	i->nfinfo_bytes6 = FUNC0(priv->nfinfo_bytes6);
	i->nfinfo_packets6 = FUNC0(priv->nfinfo_packets6);
	i->nfinfo_sbytes = FUNC0(priv->nfinfo_sbytes);
	i->nfinfo_spackets = FUNC0(priv->nfinfo_spackets);
	i->nfinfo_sbytes6 = FUNC0(priv->nfinfo_sbytes6);
	i->nfinfo_spackets6 = FUNC0(priv->nfinfo_spackets6);
	i->nfinfo_act_exp = FUNC0(priv->nfinfo_act_exp);
	i->nfinfo_inact_exp = FUNC0(priv->nfinfo_inact_exp);

	i->nfinfo_used = FUNC1(priv->zone);
#ifdef INET6
	i->nfinfo_used6 = uma_zone_get_cur(priv->zone6);
#endif

	i->nfinfo_alloc_failed = priv->nfinfo_alloc_failed;
	i->nfinfo_export_failed = priv->nfinfo_export_failed;
	i->nfinfo_export9_failed = priv->nfinfo_export9_failed;
	i->nfinfo_realloc_mbuf = priv->nfinfo_realloc_mbuf;
	i->nfinfo_alloc_fibs = priv->nfinfo_alloc_fibs;
	i->nfinfo_inact_t = priv->nfinfo_inact_t;
	i->nfinfo_act_t = priv->nfinfo_act_t;
}