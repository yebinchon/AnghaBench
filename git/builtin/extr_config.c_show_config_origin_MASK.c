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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ end_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct strbuf *buf)
{
	const char term = end_null ? '\0' : '\t';

	FUNC4(buf, FUNC1());
	FUNC3(buf, ':');
	if (end_null)
		FUNC4(buf, FUNC0());
	else
		FUNC2(FUNC0(), buf, NULL, 0);
	FUNC3(buf, term);
}