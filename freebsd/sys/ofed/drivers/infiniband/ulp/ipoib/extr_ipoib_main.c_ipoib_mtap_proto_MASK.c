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
typedef  int /*<<< orphan*/  uint16_t ;
struct mbuf {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_bpf; } ;
struct ether_header {int /*<<< orphan*/  ether_dhost; int /*<<< orphan*/  ether_shost; int /*<<< orphan*/  ether_type; } ;
typedef  int /*<<< orphan*/  eh ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ether_header*,int,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ifnet *ifp, struct mbuf *mb, uint16_t proto)
{
	struct ether_header eh;

	eh.ether_type = proto;
	FUNC1(&eh.ether_shost, ETHER_ADDR_LEN);
	FUNC1(&eh.ether_dhost, ETHER_ADDR_LEN);
	FUNC0(ifp->if_bpf, &eh, sizeof(eh), mb);
}