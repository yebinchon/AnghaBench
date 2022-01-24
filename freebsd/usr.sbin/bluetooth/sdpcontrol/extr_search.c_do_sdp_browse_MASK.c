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
#define  SDP_SERVICE_CLASS_PUBLIC_BROWSE_GROUP 128 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int USAGE ; 
 int FUNC1 (void*,int,char**) ; 

__attribute__((used)) static int
FUNC2(void *xs, int argc, char **argv)
{
#undef	_STR
#undef	STR
#define	_STR(x)	#x
#define	STR(x)	_STR(x)

	static char const * const	av[] = {
		STR(SDP_SERVICE_CLASS_PUBLIC_BROWSE_GROUP),
		NULL
	}; 

	switch (argc) {
	case 0:
		argc = 1;
		argv = (char **) av;
		/* FALL THROUGH */
	case 1:
		return (FUNC1(xs, argc, argv));
	}

	return (USAGE);
}