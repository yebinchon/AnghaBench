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
struct TYPE_2__ {int /*<<< orphan*/ * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct label {int dummy; } ;
struct inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct inpcb *inp, struct label *inplabel,
    struct mbuf *m, struct label *mlabel)
{

	FUNC0(m);
	if (m->m_pkthdr.rcvif != NULL)
		return (FUNC1(m->m_pkthdr.rcvif, 0));

	return (0);
}