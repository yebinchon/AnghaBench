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
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct llentry {scalar_t__ ln_state; struct mbuf* la_hold; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llentry*) ; 
 int /*<<< orphan*/  ND6_LLINFO_DELAY ; 
 scalar_t__ ND6_LLINFO_STALE ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct llentry *ln, struct mbuf **chain,
    struct sockaddr_in6 *sin6)
{

	FUNC0(ln);

	*chain = ln->la_hold;
	ln->la_hold = NULL;
	FUNC1(ln, (struct sockaddr *)sin6);

	if (ln->ln_state == ND6_LLINFO_STALE) {

		/*
		 * The first time we send a packet to a
		 * neighbor whose entry is STALE, we have
		 * to change the state to DELAY and a sets
		 * a timer to expire in DELAY_FIRST_PROBE_TIME
		 * seconds to ensure do neighbor unreachability
		 * detection on expiration.
		 * (RFC 2461 7.3.3)
		 */
		FUNC2(ln, ND6_LLINFO_DELAY);
	}
}