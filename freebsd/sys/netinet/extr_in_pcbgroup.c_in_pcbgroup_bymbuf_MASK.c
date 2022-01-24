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
struct TYPE_2__ {int /*<<< orphan*/  flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct inpcbinfo {int dummy; } ;
struct inpcbgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 struct inpcbgroup* FUNC1 (struct inpcbinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inpcbgroup *
FUNC2(struct inpcbinfo *pcbinfo, struct mbuf *m)
{

	return (FUNC1(pcbinfo, FUNC0(m),
	    m->m_pkthdr.flowid));
}