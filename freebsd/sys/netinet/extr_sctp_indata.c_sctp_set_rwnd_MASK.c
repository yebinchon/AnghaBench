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
struct sctp_tcb {int dummy; } ;
struct sctp_association {int /*<<< orphan*/  my_rwnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_tcb*,struct sctp_association*) ; 

void
FUNC1(struct sctp_tcb *stcb, struct sctp_association *asoc)
{
	asoc->my_rwnd = FUNC0(stcb, asoc);
}