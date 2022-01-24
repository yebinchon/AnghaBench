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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
struct command {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char const*,char,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct command** FUNC3 (struct command**,char const*,int) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(struct command **tail,
				     struct strbuf *push_cert)
{
	const char *boc, *eoc;

	if (*tail)
		FUNC0("protocol error: got both push certificate and unsigned commands");

	boc = FUNC4(push_cert->buf, "\n\n");
	if (!boc)
		FUNC0("malformed push certificate %.*s", 100, push_cert->buf);
	else
		boc += 2;
	eoc = push_cert->buf + FUNC2(push_cert->buf, push_cert->len);

	while (boc < eoc) {
		const char *eol = FUNC1(boc, '\n', eoc - boc);
		tail = FUNC3(tail, boc, eol ? eol - boc : eoc - boc);
		boc = eol ? eol + 1 : eoc;
	}
}