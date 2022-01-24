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
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 

__attribute__((used)) static void FUNC3(struct strbuf *buf, const char *name, const char *value)
{
	if (!value)
		FUNC1(buf, "unset %s; ", name);
	else {
		FUNC1(buf, "%s=", name);
		FUNC0(buf, value);
		FUNC2(buf, "; ");
	}
}