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
struct strbuf {char* buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(const char *name, size_t len,
				const char *src, int lineno)
{
	struct strbuf err = STRBUF_INIT;
	FUNC2(&err, FUNC0("%.*s is not a valid attribute name"),
		    (int) len, name);
	FUNC1(stderr, "%s: %s:%d\n", err.buf, src, lineno);
	FUNC3(&err);
}