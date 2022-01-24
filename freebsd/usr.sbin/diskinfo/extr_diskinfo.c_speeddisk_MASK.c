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
typedef  int u_int ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 

__attribute__((used)) static void
FUNC7(int fd, off_t mediasize, u_int sectorsize)
{
	int bulk, i;
	off_t b0, b1, sectorcount, step;

	/*
	 * Drives smaller than 1MB produce negative sector numbers,
	 * as do 2048 or fewer sectors.
	 */
	sectorcount = mediasize / sectorsize;
	if (mediasize < 1024 * 1024 || sectorcount < 2048)
		return;


	step = 1ULL << (FUNC3(sectorcount / (4 * 200)) - 1);
	if (step > 16384)
		step = 16384;
	bulk = mediasize / (1024 * 1024);
	if (bulk > 100)
		bulk = 100;

	FUNC4("Seek times:\n");
	FUNC4("\tFull stroke:\t");
	b0 = 0;
	b1 = sectorcount - step;
	FUNC0();
	for (i = 0; i < 125; i++) {
		FUNC6(fd, b0, sectorsize);
		b0 += step;
		FUNC6(fd, b1, sectorsize);
		b1 -= step;
	}
	FUNC1(250);

	FUNC4("\tHalf stroke:\t");
	b0 = sectorcount / 4;
	b1 = b0 + sectorcount / 2;
	FUNC0();
	for (i = 0; i < 125; i++) {
		FUNC6(fd, b0, sectorsize);
		b0 += step;
		FUNC6(fd, b1, sectorsize);
		b1 += step;
	}
	FUNC1(250);
	FUNC4("\tQuarter stroke:\t");
	b0 = sectorcount / 4;
	b1 = b0 + sectorcount / 4;
	FUNC0();
	for (i = 0; i < 250; i++) {
		FUNC6(fd, b0, sectorsize);
		b0 += step;
		FUNC6(fd, b1, sectorsize);
		b1 += step;
	}
	FUNC1(500);

	FUNC4("\tShort forward:\t");
	b0 = sectorcount / 2;
	FUNC0();
	for (i = 0; i < 400; i++) {
		FUNC6(fd, b0, sectorsize);
		b0 += step;
	}
	FUNC1(400);

	FUNC4("\tShort backward:\t");
	b0 = sectorcount / 2;
	FUNC0();
	for (i = 0; i < 400; i++) {
		FUNC6(fd, b0, sectorsize);
		b0 -= step;
	}
	FUNC1(400);

	FUNC4("\tSeq outer:\t");
	b0 = 0;
	FUNC0();
	for (i = 0; i < 2048; i++) {
		FUNC6(fd, b0, sectorsize);
		b0++;
	}
	FUNC1(2048);

	FUNC4("\tSeq inner:\t");
	b0 = sectorcount - 2048;
	FUNC0();
	for (i = 0; i < 2048; i++) {
		FUNC6(fd, b0, sectorsize);
		b0++;
	}
	FUNC1(2048);

	FUNC4("\nTransfer rates:\n");
	FUNC4("\toutside:     ");
	FUNC6(fd, 0, sectorsize);
	FUNC0();
	for (i = 0; i < bulk; i++) {
		FUNC5(fd);
	}
	FUNC2(bulk * 1024);

	FUNC4("\tmiddle:      ");
	b0 = sectorcount / 2 - bulk * (1024*1024 / sectorsize) / 2 - 1;
	FUNC6(fd, b0, sectorsize);
	FUNC0();
	for (i = 0; i < bulk; i++) {
		FUNC5(fd);
	}
	FUNC2(bulk * 1024);

	FUNC4("\tinside:      ");
	b0 = sectorcount - bulk * (1024*1024 / sectorsize) - 1;
	FUNC6(fd, b0, sectorsize);
	FUNC0();
	for (i = 0; i < bulk; i++) {
		FUNC5(fd);
	}
	FUNC2(bulk * 1024);

	FUNC4("\n");
	return;
}