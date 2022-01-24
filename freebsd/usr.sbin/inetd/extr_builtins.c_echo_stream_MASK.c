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
struct servtab {int /*<<< orphan*/  se_service; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,char*,int) ; 
 scalar_t__ FUNC3 (int,char*,int) ; 

__attribute__((used)) static void
FUNC4(int s, struct servtab *sep)
{
	char buffer[BUFSIZE];
	int i;

	FUNC1(sep->se_service, s);
	while ((i = FUNC2(s, buffer, sizeof(buffer))) > 0 &&
	    FUNC3(s, buffer, i) > 0)
		;
	FUNC0(0);
}