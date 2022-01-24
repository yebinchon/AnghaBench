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
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,size_t) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct strbuf path = STRBUF_INIT;
	size_t baselen;

	FUNC2(&path, FUNC0());
	baselen = path.len;

	FUNC1(path.buf, 1);

	FUNC4(&path, baselen);
	FUNC2(&path, "/pack");
	FUNC1(path.buf, 1);

	FUNC4(&path, baselen);
	FUNC2(&path, "/info");
	FUNC1(path.buf, 1);

	FUNC3(&path);
}