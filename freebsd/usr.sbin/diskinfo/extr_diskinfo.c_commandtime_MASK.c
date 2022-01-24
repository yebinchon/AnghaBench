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
typedef  int /*<<< orphan*/  u_int ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 double FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int fd, off_t mediasize, u_int sectorsize)
{	
	double dtmega, dtsector;
	int i;

	FUNC2("I/O command overhead:\n");
	i = mediasize;
	FUNC4(fd, 0, sectorsize);
	FUNC0();
	for (i = 0; i < 10; i++)
		FUNC3(fd);
	dtmega = FUNC1();

	FUNC2("\ttime to read 10MB block    %10.6f sec\t= %8.3f msec/sector\n",
		dtmega, dtmega*100/2048);

	FUNC4(fd, 0, sectorsize);
	FUNC0();
	for (i = 0; i < 20480; i++)
		FUNC4(fd, 0, sectorsize);
	dtsector = FUNC1();

	FUNC2("\ttime to read 20480 sectors %10.6f sec\t= %8.3f msec/sector\n",
		dtsector, dtsector*100/2048);
	FUNC2("\tcalculated command overhead\t\t\t= %8.3f msec/sector\n",
		(dtsector - dtmega)*100/2048);

	FUNC2("\n");
	return;
}