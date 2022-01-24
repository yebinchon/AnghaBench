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
struct TYPE_2__ {scalar_t__ len; int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int CSUM_TSO ; 
 scalar_t__ PIO_LEN ; 
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static __inline unsigned int
FUNC2(const struct mbuf *m, int nsegs)
{
	unsigned int flits;

	if (m->m_pkthdr.len <= PIO_LEN)
		return 1;

	flits = FUNC1(nsegs) + 2;
	if (m->m_pkthdr.csum_flags & CSUM_TSO)
		flits++;

	return FUNC0(flits);
}