#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int len; } ;
struct TYPE_6__ {int /*<<< orphan*/  last; scalar_t__ waiting_relay; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__ fragstate ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_2__ prgainfo ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*,TYPE_2__*) ; 

void FUNC4(int tx) {

	// create packet...
	if (!fragstate.data) {
		int pad = 0;

		if (prgainfo.len >= 20)
			pad = prgainfo.len*3;
	
		FUNC2(&fragstate, pad);
	}

	if (!fragstate.waiting_relay) {
		FUNC3(tx, &fragstate, &prgainfo);
		if (fragstate.waiting_relay) {
			if (FUNC1(&fragstate.last, NULL) == -1)
				FUNC0(1, "gettimeofday()");
		}
	}	
}