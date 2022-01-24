#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union sockaddr_union {int dummy; } sockaddr_union ;
struct radix_node {int dummy; } ;
struct radix_head {int dummy; } ;
struct pfr_ktable {TYPE_2__* pfrkt_ip6; TYPE_1__* pfrkt_ip4; } ;
struct pfr_kentry {int /*<<< orphan*/  pfrke_node; int /*<<< orphan*/  pfrke_sa; int /*<<< orphan*/  pfrke_net; int /*<<< orphan*/  pfrke_af; } ;
struct TYPE_4__ {struct radix_head rh; } ;
struct TYPE_3__ {struct radix_head rh; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ FUNC0 (struct pfr_kentry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (union sockaddr_union*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct radix_node* FUNC4 (int /*<<< orphan*/ *,union sockaddr_union*,struct radix_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct pfr_ktable *kt, struct pfr_kentry *ke)
{
	union sockaddr_union	 mask;
	struct radix_node	*rn;
	struct radix_head	*head = NULL;

	FUNC1();

	FUNC2(ke->pfrke_node, sizeof(ke->pfrke_node));
	if (ke->pfrke_af == AF_INET)
		head = &kt->pfrkt_ip4->rh;
	else if (ke->pfrke_af == AF_INET6)
		head = &kt->pfrkt_ip6->rh;

	if (FUNC0(ke)) {
		FUNC3(&mask, ke->pfrke_af, ke->pfrke_net);
		rn = FUNC4(&ke->pfrke_sa, &mask, head, ke->pfrke_node);
	} else
		rn = FUNC4(&ke->pfrke_sa, NULL, head, ke->pfrke_node);

	return (rn == NULL ? -1 : 0);
}