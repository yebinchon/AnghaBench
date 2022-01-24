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
struct xnb_pkt {int dummy; } ;
struct mbuf {scalar_t__ m_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf**) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct xnb_pkt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xnb_pkt*) ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen) {
	struct xnb_pkt pkt;
	int free_slots = 64;
	struct mbuf *mbuf;

	mbuf = FUNC1(M_WAITOK, MT_DATA);
	/*
	 * note: it is illegal to set M_PKTHDR on a mbuf with no data.  Doing so
	 * will cause m_freem to segfault
	 */
	FUNC0(mbuf->m_len == 0);

	FUNC3(mbuf, &pkt, 0, free_slots);
	FUNC0(! FUNC4(&pkt));

	FUNC2(&mbuf);
}