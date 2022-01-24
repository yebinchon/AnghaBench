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
struct macro_definition {int type; int /*<<< orphan*/  defn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUILTIN_MARKER ; 
 int MACRTYPE ; 
 int TYPEMASK ; 
 struct macro_definition* FUNC0 (char const*) ; 
 int /*<<< orphan*/  lquote ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rquote ; 

__attribute__((used)) static void
FUNC2(const char *name)
{
	struct macro_definition *p;

	if ((p = FUNC0(name)) != NULL) {
		if ((p->type & TYPEMASK) == MACRTYPE) {
			FUNC1(rquote);
			FUNC1(p->defn);
			FUNC1(lquote);
		} else {
			FUNC1(p->defn);
			FUNC1(BUILTIN_MARKER);
		}
	}
}