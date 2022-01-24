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
struct ieee80211_psq {scalar_t__ psq_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_psq*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_psq*) ; 

void
FUNC3(struct ieee80211_psq *psq)
{
#if 0
	psq_drain(psq);				/* XXX should not be needed? */
#else
	FUNC1(psq->psq_len == 0, ("%d frames on ps q", psq->psq_len));
#endif
	FUNC0(psq);		/* OS-dependent cleanup */
}