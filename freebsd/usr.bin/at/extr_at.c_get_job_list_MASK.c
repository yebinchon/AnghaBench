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
 scalar_t__ errno ; 
 long* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long FUNC2 (char*,char**,int) ; 

__attribute__((used)) static long *
FUNC3(int argc, char *argv[], int *joblen)
{
    int i, len;
    long *joblist;
    char *ep;

    joblist = NULL;
    len = argc;
    if (len > 0) {
	if ((joblist = FUNC0(len * sizeof(*joblist))) == NULL)
	    FUNC1("out of memory");

	for (i = 0; i < argc; i++) {
	    errno = 0;
	    if ((joblist[i] = FUNC2(argv[i], &ep, 10)) < 0 ||
		ep == argv[i] || *ep != '\0' || errno)
		FUNC1("invalid job number");
	}
    }

    *joblen = len;
    return joblist;
}