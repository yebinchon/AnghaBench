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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  t4 ;
struct ipfw_flow_id {int /*<<< orphan*/  src_port; int /*<<< orphan*/  dst_port; int /*<<< orphan*/  src_ip; int /*<<< orphan*/  dst_ip; } ;
typedef  int /*<<< orphan*/  in_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ipfw_flow_id const*) ; 
 scalar_t__ FUNC1 (struct ipfw_flow_id const*) ; 
 int /*<<< orphan*/  V_dyn_hashseed ; 
 scalar_t__ FUNC2 (struct ipfw_flow_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipfw_flow_id const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline uint32_t
FUNC5(const struct ipfw_flow_id *id)
{
	struct tuple4 {
		in_addr_t	addr[2];
		uint16_t	port[2];
	} t4;

	if (FUNC0(id)) {
		/* All fields are in host byte order */
		if (FUNC2(id) == 0) {
			t4.addr[0] = id->src_ip;
			t4.addr[1] = id->dst_ip;
			t4.port[0] = id->src_port;
			t4.port[1] = id->dst_port;
		} else {
			t4.addr[0] = id->dst_ip;
			t4.addr[1] = id->src_ip;
			t4.port[0] = id->dst_port;
			t4.port[1] = id->src_port;
		}
		return (FUNC4((const uint32_t *)&t4,
		    sizeof(t4) / sizeof(uint32_t), V_dyn_hashseed));
	} else
#ifdef INET6
	if (IS_IP6_FLOW_ID(id))
		return (hash_packet6(id));
#endif
	return (0);
}