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
struct strbuf {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (char const*,int*) ; 
 scalar_t__ FUNC1 (char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,unsigned long) ; 

__attribute__((used)) static int FUNC4(const char *in, struct strbuf *out)
{
	FUNC2(out, '@');

	if (FUNC1(in, out) < 0) {
		int errors = 0;
		unsigned long t = FUNC0(in, &errors);
		if (errors)
			return -1;
		FUNC3(out, "%lu", t);
	}

	return 0;
}