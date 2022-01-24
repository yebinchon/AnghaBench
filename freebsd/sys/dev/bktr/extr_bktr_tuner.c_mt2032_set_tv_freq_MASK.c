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
typedef  TYPE_2__* bktr_ptr_t ;
struct TYPE_6__ {unsigned int frequency; } ;
struct TYPE_7__ {TYPE_1__ tuner; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,unsigned int,int,int,int,int) ; 
 char* FUNC2 (TYPE_2__*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int,int,int) ; 

__attribute__((used)) static void
FUNC4(bktr_ptr_t bktr, unsigned int freq)
{
	int if2,from,to;
	int stat, tad;

#ifdef MT2032_NTSC
	from=40750*1000;
	to=46750*1000;
	if2=45750*1000;
#else
	from=32900*1000;
	to=39900*1000;
	if2=38900*1000;
#endif

	if (FUNC1(bktr, freq*62500 /* freq*1000*1000/16 */,
			1090*1000*1000, if2, from, to) == 0) {
		bktr->tuner.frequency = freq;
		stat = FUNC0(0x0e);
		tad = FUNC0(0x0f);
		if (bootverbose)
			FUNC3("%s: frequency set to %d, st = %#x, tad = %#x\n",
				FUNC2(bktr), freq*62500, stat, tad);
	}
}