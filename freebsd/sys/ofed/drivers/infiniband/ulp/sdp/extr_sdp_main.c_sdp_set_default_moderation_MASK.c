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
struct TYPE_2__ {int /*<<< orphan*/  cq; } ;
struct sdp_sock {TYPE_1__ rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ sdp_mod_count ; 
 scalar_t__ sdp_mod_usec ; 

void
FUNC1(struct sdp_sock *ssk)
{
	if (sdp_mod_count <= 0 || sdp_mod_usec <= 0)
		return;
	FUNC0(ssk->rx_ring.cq, sdp_mod_count, sdp_mod_usec);
}