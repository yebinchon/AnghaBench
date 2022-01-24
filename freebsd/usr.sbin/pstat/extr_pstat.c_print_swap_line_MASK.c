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
typedef  int /*<<< orphan*/  usedbuf ;
typedef  char* intmax_t ;
typedef  int /*<<< orphan*/  availbuf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int HN_B ; 
 int HN_DECIMAL ; 
 int HN_NOSPACE ; 
 int /*<<< orphan*/  FUNC2 (int*,long*) ; 
 int FUNC3 () ; 
 scalar_t__ humanflag ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static void
FUNC6(const char *swdevname, intmax_t nblks, intmax_t bused,
    intmax_t bavail, float bpercent)
{
	char usedbuf[5];
	char availbuf[5];
	int hlen, pagesize;
	long blocksize;

	pagesize = FUNC3();
	FUNC2(&hlen, &blocksize);

	FUNC5("%-15s %*jd ", swdevname, hlen, FUNC0(nblks));
	if (humanflag) {
		FUNC4(usedbuf, sizeof(usedbuf),
		    FUNC1(bused), "",
		    HN_AUTOSCALE, HN_B | HN_NOSPACE | HN_DECIMAL);
		FUNC4(availbuf, sizeof(availbuf),
		    FUNC1(bavail), "",
		    HN_AUTOSCALE, HN_B | HN_NOSPACE | HN_DECIMAL);
		FUNC5("%8s %8s %5.0f%%\n", usedbuf, availbuf, bpercent);
	} else {
		FUNC5("%8jd %8jd %5.0f%%\n", (intmax_t)FUNC0(bused),
		    (intmax_t)FUNC0(bavail), bpercent);
	}
}