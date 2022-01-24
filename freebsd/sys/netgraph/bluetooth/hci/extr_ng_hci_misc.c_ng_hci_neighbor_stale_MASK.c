#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_sec; } ;
typedef  TYPE_2__* ng_hci_neighbor_p ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct TYPE_5__ {TYPE_1__ updated; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 

int
FUNC2(ng_hci_neighbor_p n)
{
	struct timeval	now;

	FUNC1(&now);

	return (now.tv_sec - n->updated.tv_sec > FUNC0());
}