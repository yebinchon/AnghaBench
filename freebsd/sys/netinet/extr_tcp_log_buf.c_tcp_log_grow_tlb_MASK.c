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
struct tcpcb {int /*<<< orphan*/ * t_stats; int /*<<< orphan*/  t_inpcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int V_tcp_perconn_stats_enable ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(char *tlb_id, struct tcpcb *tp)
{

	FUNC0(tp->t_inpcb);

#ifdef NETFLIX
	if (V_tcp_perconn_stats_enable == 2 && tp->t_stats == NULL)
		(void)tcp_stats_sample_rollthedice(tp, tlb_id, strlen(tlb_id));
#endif
}