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
struct socklist {int sl_socket; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int MAXLINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char*,int) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct socklist *sl)
{
	char *p, *q, line[MAXLINE + 1];
	int len, i;

	len = 0;
	for (;;) {
		i = FUNC4(sl->sl_socket, line + len, MAXLINE - 1 - len);
		if (i > 0) {
			line[i + len] = '\0';
		} else {
			if (i < 0 && errno != EINTR && errno != EAGAIN) {
				FUNC1("klog");
				FUNC0(sl->sl_socket);
				sl->sl_socket = -1;
			}
			break;
		}

		for (p = line; (q = FUNC5(p, '\n')) != NULL; p = q + 1) {
			*q = '\0';
			FUNC3(p);
		}
		len = FUNC6(p);
		if (len >= MAXLINE - 1) {
			FUNC3(p);
			len = 0;
		}
		if (len > 0)
			FUNC2(line, p, len + 1);
	}
	if (len > 0)
		FUNC3(line);

	return (len);
}