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
union sockaddr_union {int /*<<< orphan*/  sin6; int /*<<< orphan*/  sin; } ;
struct radix_head {int dummy; } ;
struct pfr_ktable {TYPE_2__* pfrkt_ip6; TYPE_1__* pfrkt_ip4; } ;
struct pfr_kentry {int dummy; } ;
struct pfr_addr {int /*<<< orphan*/  pfra_net; int /*<<< orphan*/  pfra_af; int /*<<< orphan*/  pfra_ip6addr; int /*<<< orphan*/  pfra_ip4addr; } ;
typedef  int /*<<< orphan*/  sa ;
struct TYPE_4__ {struct radix_head rh; } ;
struct TYPE_3__ {struct radix_head rh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pfr_addr*) ; 
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pfr_kentry*) ; 
 scalar_t__ FUNC4 (struct pfr_kentry*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (union sockaddr_union*,int) ; 
 int /*<<< orphan*/  FUNC7 (union sockaddr_union*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (union sockaddr_union*,union sockaddr_union*,struct radix_head*) ; 
 scalar_t__ FUNC9 (union sockaddr_union*,struct radix_head*) ; 

__attribute__((used)) static struct pfr_kentry *
FUNC10(struct pfr_ktable *kt, struct pfr_addr *ad, int exact)
{
	union sockaddr_union	 sa, mask;
	struct radix_head	*head = NULL;
	struct pfr_kentry	*ke;

	FUNC5();

	FUNC6(&sa, sizeof(sa));
	if (ad->pfra_af == AF_INET) {
		FUNC1(sa.sin, ad->pfra_ip4addr);
		head = &kt->pfrkt_ip4->rh;
	} else if ( ad->pfra_af == AF_INET6 ) {
		FUNC2(sa.sin6, ad->pfra_ip6addr);
		head = &kt->pfrkt_ip6->rh;
	}
	if (FUNC0(ad)) {
		FUNC7(&mask, ad->pfra_af, ad->pfra_net);
		ke = (struct pfr_kentry *)FUNC8(&sa, &mask, head);
		if (ke && FUNC4(ke))
			ke = NULL;
	} else {
		ke = (struct pfr_kentry *)FUNC9(&sa, head);
		if (ke && FUNC4(ke))
			ke = NULL;
		if (exact && ke && FUNC3(ke))
			ke = NULL;
	}
	return (ke);
}