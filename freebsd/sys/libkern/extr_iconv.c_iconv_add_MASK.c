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
struct iconv_cspair {int dummy; } ;
struct iconv_converter_class {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (char const*,struct iconv_converter_class**) ; 
 int FUNC1 (char const*,char const*,struct iconv_converter_class*,int /*<<< orphan*/ *,struct iconv_cspair**) ; 

int
FUNC2(const char *converter, const char *to, const char *from)
{
	struct iconv_converter_class *dcp;
	struct iconv_cspair *csp;

	if (FUNC0(converter, &dcp) != 0)
		return EINVAL;

	return FUNC1(to, from, dcp, NULL, &csp);
}