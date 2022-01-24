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
 int /*<<< orphan*/  CONFIG_DATA_ENVIRONMENT ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

void FUNC6(const char *text)
{
	struct strbuf env = STRBUF_INIT;
	const char *old = FUNC0(CONFIG_DATA_ENVIRONMENT);
	if (old && *old) {
		FUNC4(&env, old);
		FUNC3(&env, ' ');
	}
	FUNC2(&env, text);
	FUNC1(CONFIG_DATA_ENVIRONMENT, env.buf, 1);
	FUNC5(&env);
}