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
struct gv_sd {int size; scalar_t__ drive_offset; scalar_t__ plex_offset; int /*<<< orphan*/  drive; int /*<<< orphan*/  state; int /*<<< orphan*/  plex; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ GV_DATA_START ; 
 int /*<<< orphan*/  FUNC0 (struct gv_sd*) ; 
 struct gv_sd* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

struct gv_sd *
FUNC7(int max, char *token[])
{
	struct gv_sd *s;
	int j, errors;

	if (token[1] == NULL || *token[1] == '\0')
		return (NULL);

	s = FUNC1();
	if (s == NULL)
		return (NULL);

	errors = 0;
	for (j = 1; j < max; j++) {
		if (!FUNC4(token[j], "name")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			FUNC5(s->name, token[j], sizeof(s->name));
		} else if (!FUNC4(token[j], "drive")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			FUNC5(s->drive, token[j], sizeof(s->drive));
		} else if (!FUNC4(token[j], "plex")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			FUNC5(s->plex, token[j], sizeof(s->plex));
		} else if (!FUNC4(token[j], "state")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			s->state = FUNC2(token[j]);
		} else if (!FUNC4(token[j], "len") ||
		    !FUNC4(token[j], "length")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			s->size = FUNC3(token[j]);
			if (s->size <= 0)
				s->size = -1;
		} else if (!FUNC4(token[j], "driveoffset")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			s->drive_offset = FUNC3(token[j]);
			if (s->drive_offset != 0 &&
			    s->drive_offset < GV_DATA_START) {
				errors++;
				break;
			}
		} else if (!FUNC4(token[j], "plexoffset")) {
			j++;
			if (j >= max) {
				errors++;
				break;
			}
			s->plex_offset = FUNC3(token[j]);
			if (s->plex_offset < 0) {
				errors++;
				break;
			}
		} else {
			errors++;
			break;
		}
	}

	if (FUNC6(s->drive) == 0)
		errors++;

	if (errors) {
		FUNC0(s);
		return (NULL);
	}

	return (s);
}