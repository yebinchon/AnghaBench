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
struct kevent_args {int eventlist; } ;
struct kevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KQ_NEVENTS ; 
 int FUNC1 (struct kevent*,int,int) ; 

__attribute__((used)) static int
FUNC2(void *arg, struct kevent *kevp, int count)
{
	struct kevent_args *uap;
	int error;

	FUNC0(count <= KQ_NEVENTS, ("count (%d) > KQ_NEVENTS", count));
	uap = (struct kevent_args *)arg;

	error = FUNC1(kevp, uap->eventlist, count * sizeof *kevp);
	if (error == 0)
		uap->eventlist += count;
	return (error);
}