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
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int MCLBYTES ; 
 int /*<<< orphan*/  MC_RAW_WR ; 
 int MHLEN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct mbuf* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ) ; 

struct mbuf *
FUNC5(int len, int how)
{
	struct mbuf *m;

	if (len <= MHLEN)
		m = FUNC2(how, MT_DATA);
	else if (len <= MCLBYTES)
		m = FUNC1(how, MT_DATA, M_PKTHDR);
	else
		m = NULL;
	if (m == NULL)
		return (NULL);
	m->m_pkthdr.len = len;
	m->m_len = len;
	FUNC3(m, MC_RAW_WR);
	FUNC4(m, FUNC0(len, 16));
	return (m);
}