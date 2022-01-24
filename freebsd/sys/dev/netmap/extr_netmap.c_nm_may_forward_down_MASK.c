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
struct netmap_kring {scalar_t__ ring_id; TYPE_1__* na; } ;
struct TYPE_2__ {scalar_t__ num_rx_rings; } ;

/* Variables and functions */
 int NAF_CAN_FORWARD_DOWN ; 
 scalar_t__ FUNC0 (struct netmap_kring*) ; 

__attribute__((used)) static inline int
FUNC1(struct netmap_kring *kring, int sync_flags)
{
	return	FUNC0(kring) &&
		 (sync_flags & NAF_CAN_FORWARD_DOWN) &&
		 kring->ring_id == kring->na->num_rx_rings;
}