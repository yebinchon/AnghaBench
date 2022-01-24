#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_3__ {int retries; int waiting_ack; TYPE_2__ tsent; int /*<<< orphan*/  psent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned char*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 TYPE_1__ txstate ; 

void FUNC11(int tx, unsigned char* buf, int len) {
	static unsigned char* lame = 0;
	static int lamelen = 0;
	static int lastlen = 0;

	// retransmit!
	if (len == -1) {
		txstate.retries++;

		if (txstate.retries > 10) {
			FUNC10("ERROR Max retransmists for (%d bytes):\n", 
			       lastlen);
			FUNC4(&lame[0], lastlen);
//			exit(1);
		}
		len = lastlen;
//		printf("Warning doing a retransmit...\n");
	}
	// normal tx
	else {
		FUNC0(!txstate.waiting_ack);
	
		if (len > lamelen) {
			if (lame)
				FUNC2(lame);
		
			lame = (unsigned char*) FUNC6(len);
			if(!lame) {
				FUNC8("malloc()");
				FUNC1(1);
			}

			lamelen = len;
		}

		FUNC7(lame, buf, len);
		txstate.retries = 0;
		lastlen = len;
	}	

	FUNC5(tx, lame, len);

	txstate.waiting_ack = 1;
	txstate.psent++;
	if (FUNC3(&txstate.tsent, NULL) == -1) {
		FUNC8("gettimeofday()");
		FUNC1(1);
	}

#if 0
	printf("Wrote frame at %lu.%lu\n", 
	       txstate.tsent.tv_sec, txstate.tsent.tv_usec);
#endif	       
}