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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(struct keymap *km)
{
	char *vid_cmd, *tmp, *p, *q;

	FUNC0(&vid_cmd, "%d/%s", dir, km->keym);
	FUNC6(vid_cmd);
	FUNC1(vid_cmd);

	tmp = FUNC4(km->keym);
	p = FUNC5(tmp, '-');
	if (p && p[1]!='\0') {
		p++;
		q = FUNC2(p);
		if (q) {
			*q = '\0';
			FUNC3("font%s=%s\n", p, km->keym);
		}
	}
	FUNC1(tmp);
}