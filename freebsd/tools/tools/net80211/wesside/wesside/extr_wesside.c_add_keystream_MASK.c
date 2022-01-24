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
struct ieee80211_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 
 int FUNC1 (unsigned char*,struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  ptw ; 

void FUNC2(struct ieee80211_frame* wh, int rd)
{
	unsigned char clear[1024];
	int dlen = rd - sizeof(struct ieee80211_frame) - 4 - 4;
	int clearsize;
	unsigned char *body = (unsigned char*) (wh+1);
	int i;
	
	clearsize = FUNC1(clear, wh, dlen);
	if (clearsize < 16)
		return;

	for (i = 0; i < 16; i++)
		clear[i] ^= body[4+i];

	FUNC0(ptw, body, clear);
}