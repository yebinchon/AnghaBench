#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  regmatch_t ;
struct TYPE_6__ {scalar_t__ re_nsub; } ;
typedef  TYPE_1__ regex_t ;

/* Variables and functions */
#define  REG_NOMATCH 128 
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const char *string, regex_t *re, const char *source,
    const char *replace, regmatch_t *pm)
{
	int error;

	switch(error = FUNC4(re, string, re->re_nsub+1, pm, 0)) {
	case 0:
		FUNC0(string, re, replace, pm);
		FUNC3(FUNC2());
		break;
	case REG_NOMATCH:
		break;
	default:
		FUNC1(error, re, source);
	}
}