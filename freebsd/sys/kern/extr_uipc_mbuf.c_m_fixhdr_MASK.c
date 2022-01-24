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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ *) ; 

u_int
FUNC1(struct mbuf *m0)
{
	u_int len;

	len = FUNC0(m0, NULL);
	m0->m_pkthdr.len = len;
	return (len);
}