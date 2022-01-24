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
struct mbuf {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_MBUF ; 
 int /*<<< orphan*/  netinet_icmp_reply ; 

__attribute__((used)) static void
FUNC2(struct mbuf *mrecv, struct label *mrecvlabel,
    struct mbuf *msend, struct label *msendlabel)
{

	FUNC1(mrecvlabel, MAGIC_MBUF);
	FUNC1(msendlabel, MAGIC_MBUF);
	FUNC0(netinet_icmp_reply);
}