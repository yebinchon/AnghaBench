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
struct mbuf {int m_flags; } ;

/* Variables and functions */
 int M_EXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct mbuf* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  tcp_pcap_clusters_referenced_cur ; 

__attribute__((used)) static void
FUNC2(struct mbuf *mb)
{
	while (mb != NULL) {
		if (mb->m_flags & M_EXT)
			FUNC0(&tcp_pcap_clusters_referenced_cur,
			    1);
		mb = FUNC1(mb);
	}
}