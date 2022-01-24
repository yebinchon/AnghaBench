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
typedef  char u_char ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 scalar_t__ FUNC4 (struct sbuf*) ; 
 struct sbuf* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,char*,char const) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,char const) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC9(char *label, size_t size)
{
	struct sbuf *sb;
	const u_char *c;

	sb = FUNC5(NULL, NULL, size, SBUF_FIXEDLEN);
	for (c = label; *c != '\0'; c++) {
		if (!FUNC0(*c) || FUNC1(*c) || *c =='"' || *c == '%')
			FUNC6(sb, "%%%02X", *c);
		else
			FUNC7(sb, *c);
	}
	if (FUNC4(sb) != 0)
		label[0] = '\0';
	else
		FUNC8(label, FUNC2(sb), size);
	FUNC3(sb);
}