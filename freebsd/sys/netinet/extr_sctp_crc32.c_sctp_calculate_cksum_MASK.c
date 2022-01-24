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
struct mbuf {scalar_t__ m_len; scalar_t__ m_data; struct mbuf* m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (scalar_t__,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

uint32_t
FUNC3(struct mbuf *m, uint32_t offset)
{
	uint32_t base = 0xffffffff;

	while (offset > 0) {
		FUNC0(m != NULL, ("sctp_calculate_cksum, offset > length of mbuf chain"));
		if (offset < (uint32_t)m->m_len) {
			break;
		}
		offset -= m->m_len;
		m = m->m_next;
	}
	if (offset > 0) {
		base = FUNC1(base,
		    (unsigned char *)(m->m_data + offset),
		    (unsigned int)(m->m_len - offset));
		m = m->m_next;
	}
	while (m != NULL) {
		base = FUNC1(base,
		    (unsigned char *)m->m_data,
		    (unsigned int)m->m_len);
		m = m->m_next;
	}
	base = FUNC2(base);
	return (base);
}