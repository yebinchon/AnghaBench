#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__* prga; int len; } ;
struct TYPE_7__ {scalar_t__* i_addr3; int /*<<< orphan*/  i_seq; } ;
struct TYPE_9__ {TYPE_1__ wh; scalar_t__ data; scalar_t__ ptr; scalar_t__ waiting_relay; } ;
struct TYPE_11__ {TYPE_4__ prgainfo; TYPE_3__ fragstate; } ;
struct TYPE_8__ {int /*<<< orphan*/  psent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCAST_PREF ; 
 TYPE_6__ decryptstate ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_3__*,TYPE_4__*) ; 
 TYPE_2__ txstate ; 

void FUNC6(int tx) {

	// gotta initiate
	if (!decryptstate.fragstate.data) {
		FUNC3(&decryptstate.fragstate, 0);

		FUNC2(decryptstate.fragstate.wh.i_addr3,
		       MCAST_PREF, 5);

		decryptstate.fragstate.wh.i_addr3[5] =
		decryptstate.prgainfo.prga[decryptstate.prgainfo.len-1];

		decryptstate.prgainfo.len++;
	}

	// guess diff prga byte...
	if (decryptstate.fragstate.waiting_relay) {	
		unsigned short* seq;
		decryptstate.prgainfo.prga[decryptstate.prgainfo.len-1]++;

#if 0		
		if (decryptstate.prgainfo.prga[decryptstate.prgainfo.len-1] == 0) {
			printf("Can't decrpyt!\n");
			exit(1);
		}
#endif
		decryptstate.fragstate.wh.i_addr3[5] =
		decryptstate.prgainfo.prga[decryptstate.prgainfo.len-1];

		decryptstate.fragstate.waiting_relay = 0;
		decryptstate.fragstate.ptr = decryptstate.fragstate.data;

		seq = (unsigned short*) &decryptstate.fragstate.wh.i_seq;
		*seq = FUNC1(0, txstate.psent);
	}

	FUNC5(tx, &decryptstate.fragstate,
		      &decryptstate.prgainfo);
}