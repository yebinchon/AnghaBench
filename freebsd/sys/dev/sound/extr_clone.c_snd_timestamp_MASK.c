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
struct timeval {int dummy; } ;
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
#define  SND_TSP_HZ 131 
#define  SND_TSP_NSEC 130 
#define  SND_TSP_SEC 129 
#define  SND_TSP_USEC 128 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*) ; 
 int snd_timestamp_precision ; 
 int /*<<< orphan*/  time_second ; 

void
FUNC4(struct timespec *tsp)
{
	struct timeval tv;

	switch (snd_timestamp_precision) {
	case SND_TSP_SEC:
		tsp->tv_sec = time_second;
		tsp->tv_nsec = 0;
		break;
	case SND_TSP_HZ:
		FUNC1(tsp);
		break;
	case SND_TSP_USEC:
		FUNC2(&tv);
		FUNC0(&tv, tsp);
		break;
	case SND_TSP_NSEC:
		FUNC3(tsp);
		break;
	default:
		snd_timestamp_precision = SND_TSP_HZ;
		FUNC1(tsp);
		break;
	}
}