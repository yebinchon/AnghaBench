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
struct strbuf {char* buf; int len; } ;
struct ref_transaction {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const) ; 
 char const line_termination ; 
 char* FUNC3 (struct ref_transaction*,struct strbuf*,char const*) ; 
 char* FUNC4 (struct ref_transaction*,struct strbuf*,char const*) ; 
 char* FUNC5 (struct strbuf*,char const*) ; 
 char* FUNC6 (struct ref_transaction*,struct strbuf*,char const*) ; 
 char* FUNC7 (struct ref_transaction*,struct strbuf*,char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,char const**) ; 
 scalar_t__ FUNC9 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 

__attribute__((used)) static void FUNC11(struct ref_transaction *transaction)
{
	struct strbuf input = STRBUF_INIT;
	const char *next;

	if (FUNC9(&input, 0, 1000) < 0)
		FUNC1("could not read from stdin");
	next = input.buf;
	/* Read each line dispatch its command */
	while (next < input.buf + input.len) {
		if (*next == line_termination)
			FUNC0("empty command in input");
		else if (FUNC2(*next))
			FUNC0("whitespace before command: %s", next);
		else if (FUNC8(next, "update ", &next))
			next = FUNC6(transaction, &input, next);
		else if (FUNC8(next, "create ", &next))
			next = FUNC3(transaction, &input, next);
		else if (FUNC8(next, "delete ", &next))
			next = FUNC4(transaction, &input, next);
		else if (FUNC8(next, "verify ", &next))
			next = FUNC7(transaction, &input, next);
		else if (FUNC8(next, "option ", &next))
			next = FUNC5(&input, next);
		else
			FUNC0("unknown command: %s", next);

		next++;
	}

	FUNC10(&input);
}