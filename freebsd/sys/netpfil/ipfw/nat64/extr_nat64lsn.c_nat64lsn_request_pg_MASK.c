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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ipfw_flow_id {int dummy; } ;
struct nat64lsn_job_item {struct nat64lsn_host* host; int /*<<< orphan*/  state_hval; int /*<<< orphan*/  proto; int /*<<< orphan*/  port; int /*<<< orphan*/  faddr; struct ipfw_flow_id f_id; struct mbuf* m; } ;
struct nat64lsn_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stats; } ;
struct nat64lsn_cfg {TYPE_1__ base; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  in_addr_t ;

/* Variables and functions */
 int IP_FW_DENY ; 
 int /*<<< orphan*/  JTYPE_NEWPORTGROUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jportreq ; 
 struct nat64lsn_job_item* FUNC1 (struct nat64lsn_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nat64lsn_cfg*,struct nat64lsn_job_item*) ; 

__attribute__((used)) static int
FUNC3(struct nat64lsn_cfg *cfg, struct nat64lsn_host *host,
    const struct ipfw_flow_id *f_id, struct mbuf **mp, uint32_t hval,
    in_addr_t faddr, uint16_t port, uint8_t proto)
{
	struct nat64lsn_job_item *ji;

	ji = FUNC1(cfg, JTYPE_NEWPORTGROUP);
	if (ji != NULL) {
		ji->m = *mp;
		ji->f_id = *f_id;
		ji->faddr = faddr;
		ji->port = port;
		ji->proto = proto;
		ji->state_hval = hval;
		ji->host = host;

		FUNC2(cfg, ji);
		FUNC0(&cfg->base.stats, jportreq);
		*mp = NULL;
	}
	return (IP_FW_DENY);
}