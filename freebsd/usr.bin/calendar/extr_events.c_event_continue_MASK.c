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
struct event {char* text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct event *e, char *txt)
{
	char *oldtext, *text;

	text = FUNC1(txt);
	oldtext = e->text;
	if (oldtext == NULL)
		FUNC2(1, "event_continue: cannot allocate memory");

	FUNC0(&e->text, "%s\n%s", oldtext, text);
	if (e->text == NULL)
		FUNC2(1, "event_continue: cannot allocate memory");
	FUNC3(oldtext);
	FUNC3(text);

	return;
}