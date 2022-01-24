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
struct circleq_dnsentry {struct circleq_dnsentry* name; int /*<<< orphan*/  ttl; } ;

/* Variables and functions */
 struct circleq_dnsentry* FUNC0 (int /*<<< orphan*/ *) ; 
 struct circleq_dnsentry* FUNC1 (struct circleq_dnsentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct circleq_dnsentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct circleq_dnsentry*) ; 
 int /*<<< orphan*/  links ; 
 scalar_t__ pending ; 
 int /*<<< orphan*/  qhead ; 

void
FUNC4(void)
{
	register struct circleq_dnsentry *q, *n;

	q = FUNC0(&qhead);
	while (q != NULL) {
		q->ttl--;
		n = FUNC1(q, links);
		if (!q->ttl) {
			FUNC2(&qhead, q, links);
			FUNC3(q->name);
			FUNC3(q);
			pending--;
		}
		q = n;
	}

	if (pending < 0)
		pending = 0;

	return;
}