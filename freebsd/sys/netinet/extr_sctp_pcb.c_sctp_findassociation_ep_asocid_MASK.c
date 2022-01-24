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
struct sctp_inpcb {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_assoc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_inpcb*) ; 
 struct sctp_tcb* FUNC2 (struct sctp_inpcb*,int /*<<< orphan*/ ,int) ; 

struct sctp_tcb *
FUNC3(struct sctp_inpcb *inp, sctp_assoc_t asoc_id, int want_lock)
{
	struct sctp_tcb *stcb;

	FUNC0(inp);
	stcb = FUNC2(inp, asoc_id, want_lock);
	FUNC1(inp);
	return (stcb);
}