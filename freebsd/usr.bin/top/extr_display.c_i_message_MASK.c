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

/* Variables and functions */
 int /*<<< orphan*/  NEXT_MSG_ADDLEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 scalar_t__ lastline ; 
 scalar_t__ msglen ; 
 char* next_msg ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ y_message ; 

void
FUNC5(void)
{
    next_msg = FUNC2(next_msg, NEXT_MSG_ADDLEN);

    while (lastline < y_message)
    {
	FUNC1('\n', stdout);
	lastline++;
    }
    if (next_msg[0] != '\0')
    {
	FUNC4(next_msg);
	msglen = FUNC3(next_msg);
	next_msg[0] = '\0';
    }
    else if (msglen > 0)
    {
	(void) FUNC0(msglen);
	msglen = 0;
    }
}