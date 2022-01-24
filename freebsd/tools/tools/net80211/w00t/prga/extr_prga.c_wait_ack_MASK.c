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
struct timeval {int tv_sec; int tv_usec; } ;
struct params {int data_try; scalar_t__ frag; int /*<<< orphan*/  state; struct timeval last; int /*<<< orphan*/  mac; scalar_t__ rx; } ;
struct ieee80211_frame {int /*<<< orphan*/  i_addr1; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_ACK ; 
 int /*<<< orphan*/  IEEE80211_FC0_TYPE_CTL ; 
 int /*<<< orphan*/  S_SEND_FRAG ; 
 int /*<<< orphan*/  S_START ; 
 int /*<<< orphan*/  S_WAIT_RELAY ; 
 int FUNC3 (struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_frame* FUNC6 (char*,int*) ; 
 int FUNC7 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC11 (struct params*) ; 
 int FUNC12 (scalar_t__,char*,int) ; 

void FUNC13(struct params *p)
{
	struct timeval now;
	int el;
	int tout = 10*1000;
	fd_set fds;
	int rc;
	char buf[4096];
	struct ieee80211_frame *wh;

	if (FUNC7(&now, NULL) == -1)
		FUNC4(1, "gettimeofday()");

	/* check for timeout */
	el = FUNC3(&p->last, &now);
	if (el >= tout) {
		if (p->data_try >= 3) {
#if 0		
			printf("Re-sending whole lot\n");
#endif			
			p->state = S_START;
			return;
		}
#if 0
		printf("Re-sending frag\n");
#endif		
		FUNC11(p);
		el = 0;
	}

	el = tout - el;
	now.tv_sec = el/1000/1000;
	now.tv_usec = el - now.tv_sec*1000*1000;

	FUNC2(&fds);
	FUNC1(p->rx, &fds);
	if (FUNC10(p->rx+1, &fds, NULL, NULL, &now) == -1)
		FUNC4(1, "select()");

	if (!FUNC0(p->rx, &fds))
		return;

	/* grab ack */
        rc = FUNC12(p->rx, buf, sizeof(buf));
        if (rc == -1)
                FUNC4(1, "sniff()");

        wh = FUNC6(buf, &rc);
        if (!wh)
                return;

	if (!FUNC5(wh, IEEE80211_FC0_TYPE_CTL, IEEE80211_FC0_SUBTYPE_ACK))
		return;

	if (FUNC8(p->mac, wh->i_addr1, 6) != 0)
		return;

	/* wait for relay */
	if (p->frag == 0) {
		p->state = S_WAIT_RELAY;
		if (FUNC7(&p->last, NULL) == -1)
			FUNC4(1, "gettimeofday()");
	}
	else
		p->state = S_SEND_FRAG;
}