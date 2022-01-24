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
struct params {int packet_len; int /*<<< orphan*/  last; scalar_t__ packet; int /*<<< orphan*/  data_try; int /*<<< orphan*/  tx; } ;
struct ieee80211_frame {int /*<<< orphan*/ * i_fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC1_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

void FUNC5(struct params *p)
{
	int rc;
	struct ieee80211_frame *wh;

	rc = FUNC3(p->tx, p->packet, p->packet_len);
	if (rc == -1)
		FUNC0(1, "inject()");
	if (rc != p->packet_len) {
		FUNC4("Wrote %d/%d\n", rc, p->packet_len);
		FUNC1(1);
	}

	p->data_try++;
	wh = (struct ieee80211_frame*) p->packet;
	wh->i_fc[1] |= IEEE80211_FC1_RETRY;

	if (FUNC2(&p->last, NULL) == -1)
		FUNC0(1, "gettimeofday()");
}