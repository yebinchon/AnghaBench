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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(const char *var, const char *s, const char *e, int hack)
{
	struct strbuf buf = STRBUF_INIT;
	if (hack)
		FUNC1(&buf, hack);
	FUNC2(&buf, "%.*s", (int)(e - s), s);
	FUNC0(var, buf.buf, 1);
	FUNC3(&buf);
}