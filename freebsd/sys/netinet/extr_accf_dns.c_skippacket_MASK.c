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
struct sockbuf {TYPE_1__* sb_mb; } ;
struct packet {int len; scalar_t__ offset; scalar_t__ moff; TYPE_1__* m; int /*<<< orphan*/  n; } ;
struct TYPE_2__ {int /*<<< orphan*/  m_nextpkt; } ;

/* Variables and functions */
 int DNS_OK ; 
 int DNS_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct packet*,unsigned long) ; 
 int FUNC1 (struct sockbuf*) ; 

__attribute__((used)) static int
FUNC2(struct sockbuf *sb) {
	unsigned long packlen;
	struct packet q, *p = &q;

	if (FUNC1(sb) < 2)
		return DNS_WAIT;

	q.m = sb->sb_mb;
	q.n = q.m->m_nextpkt;
	q.moff = 0;
	q.offset = 0;
	q.len = FUNC1(sb);

	FUNC0(p, packlen);
	if (packlen + 2 > q.len)
		return DNS_WAIT;

	return DNS_OK;
}