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
typedef  unsigned int rlim_t ;
typedef  int /*<<< orphan*/  numbr ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 unsigned int RLIM_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC3(rlim_t limit, unsigned divisor, const char * inf, const char * pfx, const char * sfx, const char * which)
{
    char numbr[64];

    if (limit == RLIM_INFINITY)
	FUNC2(numbr, inf, sizeof(numbr));
    else
	FUNC1(numbr, "%jd", (intmax_t)((limit + divisor/2) / divisor));
    FUNC0(pfx, which, numbr);
    FUNC0(sfx, which);

}