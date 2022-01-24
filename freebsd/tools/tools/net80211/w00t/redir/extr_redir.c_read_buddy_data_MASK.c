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
struct queue {int id; int len; scalar_t__ live; struct queue* next; TYPE_1__* wh; } ;
struct params {int buddy_got; struct queue* q; int /*<<< orphan*/  state; int /*<<< orphan*/  tap; scalar_t__ buddy_data; } ;
struct iovec {char* iov_base; int iov_len; } ;
typedef  int /*<<< orphan*/  mac ;
typedef  int /*<<< orphan*/  iov ;
struct TYPE_2__ {int* i_fc; int /*<<< orphan*/  i_addr3; int /*<<< orphan*/  i_addr1; int /*<<< orphan*/  i_addr2; } ;

/* Variables and functions */
 int IEEE80211_FC1_DIR_TODS ; 
 int /*<<< orphan*/  S_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct params*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct params*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct iovec*,int) ; 

void FUNC9(struct params *p)
{
	unsigned short *ptr = (unsigned short*) p->buddy_data;
	int id, len, rem;
	struct queue *q = p->q;
	struct queue *last = p->q;
	char mac[12];
	struct iovec iov[2];

	id = FUNC5(*ptr++);
	len = FUNC5(*ptr++);

	rem = len + 4 - p->buddy_got;

	FUNC0(rem > 0);
	if (!FUNC1(p, rem))
		return;

	/* w00t, got it */
#if 0	
	printf("id=%d len=%d\n", id, len);
#endif	
	p->buddy_got = 0;

	/* feedback loop bullshit */
	if (!q)
		return;
	if (!q->live)
		return;

	/* sanity chex */
	if (q->id != id) {
		FUNC6("Diff ID\n");
		return;
	}

	rem = q->len - sizeof(*q->wh) - 4 - 4;
	if (rem != len) {
		FUNC6("Diff len\n");
		return;
	}

	/* tap */
	if (q->wh->i_fc[1] & IEEE80211_FC1_DIR_TODS) {
		FUNC4(mac, q->wh->i_addr3, 6);
		FUNC4(&mac[6], q->wh->i_addr2, 6);
	} else {
		FUNC4(mac, q->wh->i_addr1, 6);
		FUNC4(&mac[6], q->wh->i_addr3, 6);
	}
	iov[0].iov_base = mac;
	iov[0].iov_len = sizeof(mac);
	iov[1].iov_base = (char*)ptr + 8 - 2;
	iov[1].iov_len = len - 8 + 2;

	rem = FUNC8(p->tap, iov, sizeof(iov)/sizeof(struct iovec));
	if (rem == -1)
		FUNC2(1, "writev()");
	if (rem != (14+(len-8))) {
		FUNC6("Short write %d\n", rem);
		FUNC3(1);
	}

	/* deque */
	q->live = 0;
	if (q->next) {

		p->q = q->next;

		while (last) {
			if (!last->next) {
				last->next = q;
				q->next = 0;
				break;
			}
			last = last->next;
		}
	}
	
	/* drain queue */
	p->state = S_START;
	if (p->q->live)
		FUNC7(p);
}