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
struct mbuf {int m_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(int pool, int size, int elements)
{
	int freed = elements;
	while (freed) {
		FUNC1(size <= MCLBYTES - 128, ("mbuf clusters are too small"));

		struct mbuf *m = FUNC4(M_NOWAIT, MT_DATA, M_PKTHDR);
		if (FUNC2(m == NULL)) {
			FUNC5("Failed to allocate mbuf for hardware pool %d\n", pool);
			break;
		}

		m->m_data += 128 - (((uintptr_t)m->m_data) & 0x7f);
		*(struct mbuf **)(m->m_data - sizeof(void *)) = m;
		FUNC3(m->m_data, pool, FUNC0(size/128));
		freed--;
	}
	return (elements - freed);
}