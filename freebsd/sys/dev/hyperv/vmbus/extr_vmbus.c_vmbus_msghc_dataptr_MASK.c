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
struct vmbus_msghc {int /*<<< orphan*/  mh_xact; } ;
struct hypercall_postmsg_in {void* hc_data; } ;

/* Variables and functions */
 struct hypercall_postmsg_in* FUNC0 (int /*<<< orphan*/ ) ; 

void *
FUNC1(struct vmbus_msghc *mh)
{
	struct hypercall_postmsg_in *inprm;

	inprm = FUNC0(mh->mh_xact);
	return (inprm->hc_data);
}