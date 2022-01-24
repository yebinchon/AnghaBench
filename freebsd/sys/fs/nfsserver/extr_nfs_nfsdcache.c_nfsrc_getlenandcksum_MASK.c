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
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  scalar_t__ mbuf_t ;

/* Variables and functions */
 int NFSRVCACHE_CHECKLEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static int
FUNC3(mbuf_t m1, u_int16_t *cksum)
{
	int len = 0, cklen;
	mbuf_t m;

	m = m1;
	while (m) {
		len += FUNC1(m);
		m = FUNC2(m);
	}
	cklen = (len > NFSRVCACHE_CHECKLEN) ? NFSRVCACHE_CHECKLEN : len;
	*cksum = FUNC0(m1, cklen);
	return (len);
}