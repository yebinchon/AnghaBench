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
struct rr_si {int dummy; } ;
struct rr_queue {int status; } ;
struct dn_queue {scalar_t__ _si; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rr_queue*,struct rr_si*) ; 

__attribute__((used)) static int
FUNC2(struct dn_queue *_q)
{
	struct rr_queue *q = (struct rr_queue *)_q;

	FUNC0("called");
	if (q->status == 1) {
		struct rr_si *si = (struct rr_si *)(_q->_si + 1);
		FUNC1(q, si);
	}
	return 0;
}