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
typedef  int u_int32_t ;
struct sc_info {scalar_t__ cbuf; } ;

/* Variables and functions */
 int PCMDIR_PLAY ; 
 int PCMDIR_REC ; 
 int* coefficientSizes ; 
 int /*<<< orphan*/ * coefficients ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct sc_info *sc, int dir, int num)
{
	int ofs, sz, i;
	u_int32_t addr;

	addr = (dir == PCMDIR_PLAY)? 0x01c : 0x21c;
	if (dir == PCMDIR_REC)
		num += 8;
	sz = coefficientSizes[num];
	ofs = 0;
	while (num-- > 0)
		ofs+= coefficientSizes[num];
	for (i = 0; i < sz; i++)
		FUNC1(sc, sc->cbuf + i, coefficients[ofs + i], 1);
	FUNC0(sc, addr, sc->cbuf, 4);
	if (dir == PCMDIR_PLAY)
		sz--;
	FUNC0(sc, addr + 4, sc->cbuf + sz, 4);
	return 0;
}