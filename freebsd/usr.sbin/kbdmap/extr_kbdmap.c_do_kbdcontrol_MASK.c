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
struct keymap {char* keym; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dir ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  x11 ; 

__attribute__((used)) static void
FUNC4(struct keymap *km)
{
	char *kbd_cmd;
	FUNC0(&kbd_cmd, "kbdcontrol -l %d/%s", dir, km->keym);

	if (!x11)
		FUNC3(kbd_cmd);

	FUNC1(stderr, "keymap=\"%s\"\n", km->keym);
	FUNC2(kbd_cmd);
}