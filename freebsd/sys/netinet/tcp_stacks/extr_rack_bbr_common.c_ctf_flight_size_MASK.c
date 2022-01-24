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
typedef  scalar_t__ uint32_t ;
struct tcpcb {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct tcpcb*,scalar_t__,scalar_t__) ; 

uint32_t 
FUNC2(struct tcpcb *tp, uint32_t rc_sacked)
{
	if (rc_sacked <= FUNC0(tp))
		return(FUNC0(tp) - rc_sacked);
	else {
		/* TSNH */
#ifdef INVARIANTS
		panic("tp:%p rc_sacked:%d > out:%d",
		      tp, rc_sacked, ctf_outstanding(tp));
#endif		
		return (0);
	}
}