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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  extra_cc ; 
 int /*<<< orphan*/  extra_hdr ; 
 int /*<<< orphan*/  extra_to ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const struct option *opt, const char *arg, int unset)
{
	if (unset) {
		FUNC1(&extra_hdr, 0);
		FUNC1(&extra_to, 0);
		FUNC1(&extra_cc, 0);
	} else {
	    FUNC0(arg);
	}
	return 0;
}