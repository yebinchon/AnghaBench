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
struct gv_drive {int /*<<< orphan*/  device; int /*<<< orphan*/  name; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gv_drive*) ; 
 struct gv_drive* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

struct gv_drive *
FUNC7(int max, char *token[])
{
	struct gv_drive *d;
	int j, errors;
	char *ptr;

	if (token[1] == NULL || *token[1] == '\0')
		return (NULL);
	d = FUNC1();
	if (d == NULL)
		return (NULL);
	errors = 0;
	for (j = 1; j < max; j++) {
		if (!FUNC3(token[j], "state")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			d->state = FUNC2(token[j]);
		} else if (!FUNC3(token[j], "device")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			ptr = token[j];

			if (FUNC6(ptr, "/dev/", 5) == 0)
				ptr += 5;
			FUNC4(d->device, ptr, sizeof(d->device));
		} else {
			/* We assume this is the drive name. */
			FUNC4(d->name, token[j], sizeof(d->name));
		}
	}

	if (FUNC5(d->name) == 0 || FUNC5(d->device) == 0)
		errors++;

	if (errors) {
		FUNC0(d);
		return (NULL);
	}

	return (d);
}