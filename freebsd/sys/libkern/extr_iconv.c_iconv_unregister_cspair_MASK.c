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
struct iconv_cspair {struct iconv_cspair* cp_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_ICONV ; 
 int /*<<< orphan*/  M_ICONVDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct iconv_cspair*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cp_link ; 
 int /*<<< orphan*/  FUNC1 (struct iconv_cspair*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iconv_cslist ; 

__attribute__((used)) static void
FUNC2(struct iconv_cspair *csp)
{
	FUNC0(&iconv_cslist, csp, cp_link);
	if (csp->cp_data)
		FUNC1(csp->cp_data, M_ICONVDATA);
	FUNC1(csp, M_ICONV);
}