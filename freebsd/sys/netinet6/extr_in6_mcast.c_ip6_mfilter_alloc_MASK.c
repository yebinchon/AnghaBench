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
struct in6_mfilter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IN6MFILTER ; 
 int /*<<< orphan*/  FUNC0 (struct in6_mfilter*,int const,int const) ; 
 struct in6_mfilter* FUNC1 (int,int /*<<< orphan*/ ,int const) ; 

struct in6_mfilter *
FUNC2(const int mflags, const int st0, const int st1)
{
	struct in6_mfilter *imf;

	imf = FUNC1(sizeof(*imf), M_IN6MFILTER, mflags);

	if (imf != NULL)
		FUNC0(imf, st0, st1);

	return (imf);
}