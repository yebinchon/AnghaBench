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

/* Variables and functions */
 int LPIPTBLSIZE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int* ctrecvh ; 
 int* ctrecvl ; 
 int* ctxmith ; 
 int* ctxmitl ; 
 int /*<<< orphan*/  lp_tables_lock ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int* trecvh ; 
 int* trecvl ; 
 int* txmith ; 
 int* txmitl ; 

__attribute__((used)) static int
FUNC3(void)
{
	int i;

	FUNC1(&lp_tables_lock);
	if (txmith == NULL)
		txmith = FUNC0(4 * LPIPTBLSIZE, M_DEVBUF, M_NOWAIT);

	if (txmith == NULL) {
		FUNC2(&lp_tables_lock);
		return (1);
	}

	if (ctxmith == NULL)
		ctxmith = FUNC0(4 * LPIPTBLSIZE, M_DEVBUF, M_NOWAIT);

	if (ctxmith == NULL) {
		FUNC2(&lp_tables_lock);
		return (1);
	}

	for (i = 0; i < LPIPTBLSIZE; i++) {
		ctxmith[i] = (i & 0xF0) >> 4;
		ctxmitl[i] = 0x10 | (i & 0x0F);
		ctrecvh[i] = (i & 0x78) << 1;
		ctrecvl[i] = (i & 0x78) >> 3;
	}

	for (i = 0; i < LPIPTBLSIZE; i++) {
		txmith[i] = ((i & 0x80) >> 3) | ((i & 0x70) >> 4) | 0x08;
		txmitl[i] = ((i & 0x08) << 1) | (i & 0x07);
		trecvh[i] = ((~i) & 0x80) | ((i & 0x38) << 1);
		trecvl[i] = (((~i) & 0x80) >> 4) | ((i & 0x38) >> 3);
	}
	FUNC2(&lp_tables_lock);

	return (0);
}