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
struct ioc_toc_header {int ending_track; int starting_track; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDIOREADTOCHEADER ; 
 int CMD_NEXT ; 
 int /*<<< orphan*/  fd ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ioc_toc_header*) ; 
 int FUNC1 (int,int,int,int) ; 
 int FUNC2 (char*,char*,int*) ; 
 int FUNC3 (int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(char *arg, int cmd)
{
	struct ioc_toc_header h;
	int dir, junk, n, off, rc, trk;

	dir = (cmd == CMD_NEXT) ? 1 : -1;
	rc = FUNC0 (fd, CDIOREADTOCHEADER, &h);
	if (rc < 0)
		return (rc);

	n = h.ending_track - h.starting_track + 1;
	rc = FUNC3 (&trk, &junk, &junk, &junk);
	if (rc < 0)
		return (-1);

	if (arg && *arg) {
		if (FUNC2 (arg, "%u", &off) != 1) {
		    FUNC4("invalid command argument");
		    return (0);
		} else
		    trk += off * dir;
	} else
		trk += dir;

	if (trk > h.ending_track)
		trk = 1;

	return (FUNC1 (trk, 1, n, 1));
}