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
struct queue {int live; char* buf; int len; scalar_t__ id; struct ieee80211_frame* wh; struct queue* next; } ;
struct params {int /*<<< orphan*/  id; struct queue* q; } ;
struct ieee80211_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct queue*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct queue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void FUNC5(struct params *p, char **buf, struct ieee80211_frame *wh, int len)
{
	struct queue *q = p->q;
	int qlen = 0;
	char *ret = NULL;
	struct queue *last = NULL;

	/* find a slot */
	while (q) {
		if (q->live)
			qlen++;
		else {
			/* recycle */
			ret = q->buf;
			break;
		}

		last = q;
		q = q->next;	
	}

	/* need to create slot */
	if (!q) {
		q = (struct queue*) FUNC2(sizeof(*q));
		if (!q)
			FUNC1(1, "malloc()");
		FUNC3(q, 0, sizeof(*q));
	
		/* insert */
		if (!p->q)
			p->q = q;
		else {
			FUNC0(last);
			last->next = q;
		}
	}

	q->live = 1;
	q->buf = *buf;
	q->len = len;
	q->wh = wh;
	q->id = p->id++;

	qlen++;

	if (qlen > 5)
		FUNC4("Enque.  Size: %d\n", qlen);
	*buf = ret;
}