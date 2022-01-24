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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct servtab {int dummy; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;

/* Variables and functions */
 int LINESIZ ; 
 scalar_t__ FUNC0 (struct sockaddr*,struct servtab*) ; 
 char* endring ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 char* ring ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 

__attribute__((used)) static void
FUNC5(int s, struct servtab *sep)
{
	struct sockaddr_storage ss;
	static char *rs;
	int len;
	socklen_t size;
	char text[LINESIZ+2];

	if (endring == 0) {
		FUNC1();
		rs = ring;
	}

	size = sizeof(ss);
	if (FUNC3(s, text, sizeof(text), 0,
		     (struct sockaddr *)&ss, &size) < 0)
		return;

	if (FUNC0((struct sockaddr *)&ss, sep))
		return;

	if ((len = endring - rs) >= LINESIZ)
		FUNC2(text, rs, LINESIZ);
	else {
		FUNC2(text, rs, len);
		FUNC2(text + len, ring, LINESIZ - len);
	}
	if (++rs == endring)
		rs = ring;
	text[LINESIZ] = '\r';
	text[LINESIZ + 1] = '\n';
	(void) FUNC4(s, text, sizeof(text), 0, (struct sockaddr *)&ss, size);
}