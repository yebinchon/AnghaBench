#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_short ;
struct TYPE_2__ {int csum_flags; scalar_t__ csum_data; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;
typedef  int /*<<< orphan*/  csum ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int CSUM_UDP_IPV6 ; 
 scalar_t__ FUNC0 (struct mbuf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mbuf*,scalar_t__) ; 

void
FUNC3(struct mbuf *m, uint32_t plen, u_short offset)
{
	u_short csum;

	csum = FUNC0(m, offset + plen, offset);
	if (m->m_pkthdr.csum_flags & CSUM_UDP_IPV6 && csum == 0)
		csum = 0xffff;
	offset += m->m_pkthdr.csum_data;	/* checksum offset */

	if (offset + sizeof(csum) > m->m_len)
		FUNC1(m, offset, sizeof(csum), (caddr_t)&csum);
	else
		*(u_short *)FUNC2(m, offset) = csum;
}