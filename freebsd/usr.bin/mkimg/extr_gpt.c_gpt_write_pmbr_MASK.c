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
typedef  scalar_t__ uint32_t ;
typedef  int u_char ;
typedef  scalar_t__ lba_t ;

/* Variables and functions */
 int /*<<< orphan*/  DOSMAGIC ; 
 int DOSMAGICOFFSET ; 
 int DOSPARTOFF ; 
 scalar_t__ UINT32_MAX ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,scalar_t__) ; 
 int* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ secsz ; 

__attribute__((used)) static int
FUNC7(lba_t blks, void *bootcode)
{
	u_char *pmbr;
	uint32_t secs;
	int error;

	secs = (blks > UINT32_MAX) ? UINT32_MAX : (uint32_t)blks - 1;

	pmbr = FUNC4(secsz);
	if (pmbr == NULL)
		return (errno);
	if (bootcode != NULL) {
		FUNC5(pmbr, bootcode, DOSPARTOFF);
		FUNC6(pmbr + DOSPARTOFF, 0, secsz - DOSPARTOFF);
	} else
		FUNC6(pmbr, 0, secsz);
	pmbr[DOSPARTOFF + 2] = 2;
	pmbr[DOSPARTOFF + 4] = 0xee;
	pmbr[DOSPARTOFF + 5] = 0xff;
	pmbr[DOSPARTOFF + 6] = 0xff;
	pmbr[DOSPARTOFF + 7] = 0xff;
	FUNC3(pmbr + DOSPARTOFF + 8, 1);
	FUNC3(pmbr + DOSPARTOFF + 12, secs);
	FUNC2(pmbr + DOSMAGICOFFSET, DOSMAGIC);
	error = FUNC1(0, pmbr, 1);
	FUNC0(pmbr);
	return (error);
}