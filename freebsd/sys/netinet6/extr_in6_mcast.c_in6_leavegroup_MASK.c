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
struct in6_multi {int dummy; } ;
struct in6_mfilter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct in6_multi*,struct in6_mfilter*) ; 

int
FUNC3(struct in6_multi *inm, /*const*/ struct in6_mfilter *imf)
{
	int error;

	FUNC0();
	error = FUNC2(inm, imf);
	FUNC1();
	return (error);
}