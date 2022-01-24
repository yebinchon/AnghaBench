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
typedef  int /*<<< orphan*/  uint32_t ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mbuf*) ; 
 struct mbuf* FUNC1 (struct mbuf*) ; 

uint32_t
FUNC2(struct mbuf *m)
{
	uint32_t tlen = 0;
	struct mbuf *at;

	at = m;
	while (at) {
		tlen += FUNC0(at);
		at = FUNC1(at);
	}
	return (tlen);
}