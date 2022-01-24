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
typedef  int /*<<< orphan*/  text ;
struct servtab {int /*<<< orphan*/  se_service; } ;

/* Variables and functions */
 int LINESIZ ; 
 char* endring ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* ring ; 
 int FUNC4 (int,char*,int) ; 

__attribute__((used)) static void
FUNC5(int s, struct servtab *sep)
{
	int len;
	char *rs, text[LINESIZ+2];

	FUNC1(sep->se_service, s);

	if (!endring)
		FUNC2();

	text[LINESIZ] = '\r';
	text[LINESIZ + 1] = '\n';
	for (rs = ring;;) {
		if ((len = endring - rs) >= LINESIZ)
			FUNC3(text, rs, LINESIZ);
		else {
			FUNC3(text, rs, len);
			FUNC3(text + len, ring, LINESIZ - len);
		}
		if (++rs == endring)
			rs = ring;
		if (FUNC4(s, text, sizeof(text)) != sizeof(text))
			break;
	}
	FUNC0(0);
}