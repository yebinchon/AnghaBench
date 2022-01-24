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
struct timeval {int /*<<< orphan*/  tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_IEEE802_11_RADIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptw ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  tx ; 

void FUNC10(char *dev) {
	int fd;

	FUNC9(dev);

	fd = FUNC4(dev, DLT_IEEE802_11_RADIO);

	ptw = FUNC0();
	if (!ptw)
		FUNC2(1, "PTW_newattackstate()");

	FUNC5(fd);

#if 0
	{
		int i;
		struct timeval tv;
		set_chan(11);
		for (i = 0; i < 10; i++) {
			gettimeofday(&tv, NULL);

			send_ack(tx);
//			usleep(500);
			printf("%lu\n", tv.tv_usec);
		}	
	}	
#endif

	FUNC1(fd);
}