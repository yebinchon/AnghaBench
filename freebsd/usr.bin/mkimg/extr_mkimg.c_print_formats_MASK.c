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
struct mkimg_format {char* name; char* description; } ;

/* Variables and functions */
 struct mkimg_format* FUNC0 (struct mkimg_format*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(int usage)
{
	struct mkimg_format *f;
	const char *sep;

	if (usage) {
		FUNC1(stderr, "    formats:\n");
		f = NULL;
		while ((f = FUNC0(f)) != NULL) {
			FUNC1(stderr, "\t%s\t-  %s\n", f->name,
			    f->description);
		}
	} else {
		sep = "";
		f = NULL;
		while ((f = FUNC0(f)) != NULL) {
			FUNC2("%s%s", sep, f->name);
			sep = " ";
		}
		FUNC3('\n');
	}
}