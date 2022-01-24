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
struct timeval {double tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 double poll_rate ; 
 double pps ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC6 (int) ; 

void FUNC7(int s, struct sockaddr_in* s_in) {
	char buf[64];
	int times = 10;
	int i;
	int delay = 10*1000;
	unsigned int sent = 0;
	struct timeval start, end;
	struct timespec ts;
	int dont_sleep_times = 1;
	int dont_sleep;

	delay = (int) ((double)1.0/pps*1000.0*1000.0);

	if (delay <= 5000) {
		dont_sleep_times = 10;
/*		
		printf("delay is %d... sleeping every %d packets\n",
			delay, dont_sleep_times);
*/			
		delay *= dont_sleep_times;

		delay = (int) (0.90*delay);
	}	
	
	dont_sleep = dont_sleep_times;
	times = poll_rate*pps;
//	times *= dont_sleep;



	ts.tv_sec = 0;
	ts.tv_nsec = delay*1000;

//	printf("times=%d delay=%d\n", times, delay);
	if (FUNC1(&start, NULL) == -1) {
		FUNC3("gettimeofday()");
		FUNC0(1);
	}

	for(i = 0; i < times; i++) {
		if( FUNC5(s, buf, 6, 0, (struct sockaddr *)s_in, sizeof(*s_in)) != 6) {
			FUNC4("messed up a bit\n");
			return;
		}

#ifndef INSANE

#if 0
		if (usleep(delay) == -1) {
			perror("usleep()");
			exit(1);
		}
#endif
		dont_sleep--;
		
		if (!dont_sleep) {
			if (FUNC2(&ts, NULL) == -1) {
				FUNC3("nanosleep()");
				FUNC0(1);
			}

			dont_sleep  = dont_sleep_times;
		}	
		
#endif	
		sent++;
	}

	if (FUNC1(&end, NULL) == -1) {
		FUNC3("gettimeofday()");
		FUNC0(1);
	}

	FUNC4 ("Sent %.03f p/s\n", ((double)sent)/(((double)end.tv_sec) - start.tv_sec));

//	printf("Sent %d packets\n", i);
}