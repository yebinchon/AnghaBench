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
 scalar_t__ REGDEP ; 
 int STRINGLEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  lexnumber ; 
 char* lexstring ; 
 int /*<<< orphan*/ * numberstack ; 
 scalar_t__ regretp ; 
 int* regretstack ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * string_stack ; 

void
FUNC2(int token)
{
	if (++regretp >= REGDEP)
		FUNC0(1, "Too many regrets");
	regretstack[regretp] = token;
	lexstring[STRINGLEN-1] = '\0';
	string_stack[regretp] = FUNC1(lexstring);
	numberstack[regretp] = lexnumber;
}