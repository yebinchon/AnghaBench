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
typedef  scalar_t__ uint32_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct servtab {int dummy; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  result ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sockaddr*,struct servtab*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 

__attribute__((used)) static void
FUNC4(int s, struct servtab *sep)
{
	uint32_t result;
	struct sockaddr_storage ss;
	socklen_t size;

	size = sizeof(ss);
	if (FUNC2(s, (char *)&result, sizeof(result), 0,
		     (struct sockaddr *)&ss, &size) < 0)
		return;

	if (FUNC0((struct sockaddr *)&ss, sep))
		return;

	result = FUNC1();
	(void) FUNC3(s, (char *) &result, sizeof(result), 0,
		      (struct sockaddr *)&ss, size);
}