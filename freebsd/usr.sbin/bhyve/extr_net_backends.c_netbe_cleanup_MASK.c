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
struct net_backend {int /*<<< orphan*/  (* cleanup ) (struct net_backend*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_backend*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_backend*) ; 

void
FUNC2(struct net_backend *be)
{

	if (be != NULL) {
		be->cleanup(be);
		FUNC0(be);
	}
}