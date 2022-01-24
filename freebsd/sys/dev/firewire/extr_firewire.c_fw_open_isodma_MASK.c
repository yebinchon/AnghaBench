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
struct fw_xferq {int flag; } ;
struct firewire_comm {int nisodma; struct fw_xferq** ir; struct fw_xferq** it; } ;

/* Variables and functions */
 int FWXFERQ_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC1 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int
FUNC3(struct firewire_comm *fc, int tx)
{
	struct fw_xferq **xferqa;
	struct fw_xferq *xferq;
	int i;

	if (tx)
		xferqa = &fc->it[0];
	else
		xferqa = &fc->ir[0];

	FUNC0(fc);
	for (i = 0; i < fc->nisodma; i++) {
		xferq = xferqa[i];
		if ((xferq->flag & FWXFERQ_OPEN) == 0) {
			xferq->flag |= FWXFERQ_OPEN;
			break;
		}
	}
	if (i == fc->nisodma) {
		FUNC2("no free dma channel (tx=%d)\n", tx);
		i = -1;
	}
	FUNC1(fc);
	return (i);
}