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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct nvme_completion {int cid; int /*<<< orphan*/  sqid; int /*<<< orphan*/  sqhd; int /*<<< orphan*/  cdw0; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int,int,int,int,int,int,int) ; 

void
FUNC8(struct nvme_completion *cpl)
{
	uint8_t p, sc, sct, m, dnr;
	uint16_t status;

	status = FUNC5(cpl->status);

	p = FUNC2(status);
	sc = FUNC3(status);
	sct = FUNC4(status);
	m = FUNC1(status);
	dnr = FUNC0(status);

	FUNC7("cdw0:%08x sqhd:%04x sqid:%04x "
	    "cid:%04x p:%x sc:%02x sct:%x m:%x dnr:%x\n",
	    FUNC6(cpl->cdw0), FUNC5(cpl->sqhd), FUNC5(cpl->sqid),
	    cpl->cid, p, sc, sct, m, dnr);
}