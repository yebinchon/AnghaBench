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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static int FUNC4(const char *path, struct strbuf *buf)
{
	if (FUNC2(buf, path, 0) < 0)
		return FUNC1(FUNC0("could not read '%s'"), path);
	FUNC3(buf);
	return 0;
}