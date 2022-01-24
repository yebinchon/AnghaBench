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
typedef  int /*<<< orphan*/  time_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct servtab {int dummy; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sockaddr*,struct servtab*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(int s, struct servtab *sep)
{
	char buffer[256];
	time_t now;
	struct sockaddr_storage ss;
	socklen_t size;

	now = FUNC6((time_t *) 0);

	size = sizeof(ss);
	if (FUNC2(s, buffer, sizeof(buffer), 0,
		     (struct sockaddr *)&ss, &size) < 0)
		return;

	if (FUNC0((struct sockaddr *)&ss, sep))
		return;

	(void) FUNC4(buffer, "%.24s\r\n", FUNC1(&now));
	(void) FUNC3(s, buffer, FUNC5(buffer), 0,
		      (struct sockaddr *)&ss, size);
}