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
struct mkimg_scheme {char* name; char* description; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 struct mkimg_scheme* FUNC3 (struct mkimg_scheme*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(int usage)
{
	struct mkimg_scheme *s;
	const char *sep;

	if (usage) {
		FUNC0(stderr, "    schemes:\n");
		s = NULL;
		while ((s = FUNC3(s)) != NULL) {
			FUNC0(stderr, "\t%s\t-  %s\n", s->name,
			    s->description);
		}
	} else {
		sep = "";
		s = NULL;
		while ((s = FUNC3(s)) != NULL) {
			FUNC1("%s%s", sep, s->name);
			sep = " ";
		}
		FUNC2('\n');
	}
}