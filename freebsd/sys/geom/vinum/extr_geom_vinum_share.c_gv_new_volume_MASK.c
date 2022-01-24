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
struct gv_volume {int /*<<< orphan*/  name; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gv_volume*) ; 
 struct gv_volume* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

struct gv_volume *
FUNC6(int max, char *token[])
{
	struct gv_volume *v;
	int j, errors;

	if (token[1] == NULL || *token[1] == '\0')
		return (NULL);

	v = FUNC1();
	if (v == NULL)
		return (NULL);

	errors = 0;
	for (j = 1; j < max; j++) {
		if (!FUNC3(token[j], "state")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			v->state = FUNC2(token[j]);
		} else {
			/* We assume this is the volume name. */
			FUNC4(v->name, token[j], sizeof(v->name));
		}
	}

	if (FUNC5(v->name) == 0)
		errors++;

	if (errors) {
		FUNC0(v);
		return (NULL);
	}

	return (v);
}