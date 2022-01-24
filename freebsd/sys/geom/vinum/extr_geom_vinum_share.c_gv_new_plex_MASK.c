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
struct gv_plex {scalar_t__ org; scalar_t__ stripesize; int /*<<< orphan*/  volume; int /*<<< orphan*/  state; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ GV_PLEX_RAID5 ; 
 scalar_t__ GV_PLEX_STRIPED ; 
 int /*<<< orphan*/  FUNC0 (struct gv_plex*) ; 
 struct gv_plex* FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

struct gv_plex *
FUNC7(int max, char *token[])
{
	struct gv_plex *p;
	int j, errors;

	if (token[1] == NULL || *token[1] == '\0')
		return (NULL);

	p = FUNC1();
	if (p == NULL)
		return (NULL);

	errors = 0;
	for (j = 1; j < max; j++) {
		if (!FUNC5(token[j], "name")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			FUNC6(p->name, token[j], sizeof(p->name));
		} else if (!FUNC5(token[j], "org")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			p->org = FUNC2(token[j]);
			if ((p->org == GV_PLEX_RAID5) ||
			    (p->org == GV_PLEX_STRIPED)) {
				j++;
				if (j >= max) {
					errors++;
					break;
				}
				p->stripesize = FUNC4(token[j]);
				if (p->stripesize == 0) {
					errors++;
					break;
				}
			}
		} else if (!FUNC5(token[j], "state")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			p->state = FUNC3(token[j]);
		} else if (!FUNC5(token[j], "vol") ||
			    !FUNC5(token[j], "volume")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			FUNC6(p->volume, token[j], sizeof(p->volume));
		} else {
			errors++;
			break;
		}
	}

	if (errors) {
		FUNC0(p);
		return (NULL);
	}

	return (p);
}