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
struct ieee80211_frame {int* i_fc; int /*<<< orphan*/  i_addr2; int /*<<< orphan*/  i_addr1; scalar_t__ i_seq; } ;
struct TYPE_2__ {int /*<<< orphan*/  bss; } ;

/* Variables and functions */
 scalar_t__ FIND_VICTIM ; 
 scalar_t__ FOUND_VICTIM ; 
 int IEEE80211_FC0_SUBTYPE_BEACON ; 
 int IEEE80211_FC0_SUBTYPE_MASK ; 
 int IEEE80211_FC0_SUBTYPE_PROBE_RESP ; 
 int IEEE80211_FC0_TYPE_CTL ; 
 int IEEE80211_FC0_TYPE_MASK ; 
 int IEEE80211_FC0_TYPE_MGT ; 
 int IEEE80211_FC1_DIR_FROMDS ; 
 int IEEE80211_FC1_DIR_TODS ; 
 int IEEE80211_FC1_RETRY ; 
 unsigned short IEEE80211_SEQ_SEQ_MASK ; 
 unsigned short IEEE80211_SEQ_SEQ_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ieee80211_frame*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mymac ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ state ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 TYPE_1__ victim ; 

void FUNC7(unsigned char* buf, int rd, int tx) { // yze
	struct ieee80211_frame* wh = (struct ieee80211_frame *) buf;
	int type,stype;
	static int lastseq = -1;
	int seq;
	unsigned short *seqptr;
	int for_us = 0;

	if (rd < 1) {
		FUNC6("rd=%d\n", rd);
		FUNC0(1);
	}

	type = wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK;
	stype = wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK;

	// sort out acks
	if (state >= FOUND_VICTIM) {
		// stuff for us
		if (FUNC2(wh->i_addr1, mymac, 6) == 0) {
			for_us = 1;
			if (type != IEEE80211_FC0_TYPE_CTL)
				FUNC3(tx);
		}
	}	
	
	// XXX i know it aint great...
	seqptr = (unsigned short*)  wh->i_seq;
	seq = (*seqptr & IEEE80211_SEQ_SEQ_MASK) >> IEEE80211_SEQ_SEQ_SHIFT;
	if (seq == lastseq && (wh->i_fc[1] & IEEE80211_FC1_RETRY) &&
	    type != IEEE80211_FC0_TYPE_CTL) {
//		printf("Ignoring dup packet... seq=%d\n", seq);
		return;
	}
	lastseq = seq;

	// management frame
	if (type == IEEE80211_FC0_TYPE_MGT) {
		if(state == FIND_VICTIM) {
			if (stype == IEEE80211_FC0_SUBTYPE_BEACON ||
			    stype == IEEE80211_FC0_SUBTYPE_PROBE_RESP) {

			    	if (FUNC1(wh, rd)) {
			    		return;
				}
			}
			    
		}
	}

	if (state >= FOUND_VICTIM) {
		// stuff for us
		if (for_us) {
			FUNC5(wh, rd);
		}

		// stuff in network [even for us]
		if ( ((wh->i_fc[1] & IEEE80211_FC1_DIR_TODS) &&
			  (FUNC2(victim.bss, wh->i_addr1, 6) == 0)) || 
			  
			  ((wh->i_fc[1] & IEEE80211_FC1_DIR_FROMDS) &&
			  (FUNC2(victim.bss, wh->i_addr2, 6) == 0))
			   ) {
			FUNC4(wh, rd);
		}
	}
}