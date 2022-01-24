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
struct tcpcb {int /*<<< orphan*/  t_outpkts; int /*<<< orphan*/  t_inpkts; } ;

/* Variables and functions */
 int /*<<< orphan*/  V_tcp_pcap_packets ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC1(struct tcpcb *tp)
{
	FUNC0(&(tp->t_inpkts), V_tcp_pcap_packets);
	FUNC0(&(tp->t_outpkts), V_tcp_pcap_packets);
}