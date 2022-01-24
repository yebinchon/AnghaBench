#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_2__ {int subsection_case_sensitive; scalar_t__ eof; } ;

/* Variables and functions */
 TYPE_1__* cf ; 
 int FUNC0 (struct strbuf*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct strbuf *name)
{
	cf->subsection_case_sensitive = 1;
	for (;;) {
		int c = FUNC1();
		if (cf->eof)
			return -1;
		if (c == ']')
			return 0;
		if (FUNC3(c))
			return FUNC0(name, c);
		if (!FUNC2(c) && c != '.')
			return -1;
		FUNC4(name, FUNC5(c));
	}
}