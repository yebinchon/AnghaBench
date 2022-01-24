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
struct ipfw_flow_id {int /*<<< orphan*/  src_ip; int /*<<< orphan*/  dst_ip; int /*<<< orphan*/  flow_id6; int /*<<< orphan*/  src_ip6; int /*<<< orphan*/  dst_ip6; int /*<<< orphan*/  extra; int /*<<< orphan*/  proto; int /*<<< orphan*/  src_port; int /*<<< orphan*/  dst_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ipfw_flow_id*) ; 

__attribute__((used)) static struct ipfw_flow_id *
FUNC2(struct ipfw_flow_id *mask, struct ipfw_flow_id *id)
{
	int is_v6 = FUNC1(id);

	id->dst_port &= mask->dst_port;
	id->src_port &= mask->src_port;
	id->proto &= mask->proto;
	id->extra &= mask->extra;
	if (is_v6) {
		FUNC0(&id->dst_ip6, &mask->dst_ip6);
		FUNC0(&id->src_ip6, &mask->src_ip6);
		id->flow_id6 &= mask->flow_id6;
	} else {
		id->dst_ip &= mask->dst_ip;
		id->src_ip &= mask->src_ip;
	}
	return id;
}