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
struct kevent {scalar_t__ filter; int fflags; } ;

/* Variables and functions */
 scalar_t__ EVFILT_PROC ; 
 scalar_t__ EVFILT_PROCDESC ; 
 scalar_t__ EVFILT_VNODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTE_ATTRIB ; 
 int /*<<< orphan*/  NOTE_CHILD ; 
 int /*<<< orphan*/  NOTE_DELETE ; 
 int /*<<< orphan*/  NOTE_EXEC ; 
 int /*<<< orphan*/  NOTE_EXIT ; 
 int /*<<< orphan*/  NOTE_EXTEND ; 
 int /*<<< orphan*/  NOTE_FORK ; 
 int /*<<< orphan*/  NOTE_LINK ; 
 int /*<<< orphan*/  NOTE_RENAME ; 
 int /*<<< orphan*/  NOTE_REVOKE ; 
 int /*<<< orphan*/  NOTE_TRACK ; 
 int /*<<< orphan*/  NOTE_TRACKERR ; 
 int /*<<< orphan*/  NOTE_TRUNCATE ; 
 int /*<<< orphan*/  NOTE_WRITE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (char*) ; 

char *
FUNC5(struct kevent *kev)
{
    char *buf;

#define KEVFFL_DUMP(attrib) \
    if (kev->fflags & attrib) \
        strncat(buf, #attrib" ", 64);

    if ((buf = FUNC2(1, 1024)) == NULL)
        FUNC1();

    /* Not every filter has meaningful fflags */
    if (kev->filter == EVFILT_PROC) {
        FUNC3(buf, 1024, "fflags = %x (", kev->fflags);
        KEVFFL_DUMP(NOTE_EXIT);
        KEVFFL_DUMP(NOTE_FORK);
        KEVFFL_DUMP(NOTE_EXEC);
        KEVFFL_DUMP(NOTE_CHILD);
        KEVFFL_DUMP(NOTE_TRACKERR);
        KEVFFL_DUMP(NOTE_TRACK);
        buf[FUNC4(buf) - 1] = ')';
    } else if (kev->filter == EVFILT_PROCDESC) {
        FUNC3(buf, 1024, "fflags = %x (", kev->fflags);
        KEVFFL_DUMP(NOTE_EXIT);
        KEVFFL_DUMP(NOTE_FORK);
        KEVFFL_DUMP(NOTE_EXEC);
        buf[FUNC4(buf) - 1] = ')';
    } else if (kev->filter == EVFILT_VNODE) {
        FUNC3(buf, 1024, "fflags = %x (", kev->fflags);
        KEVFFL_DUMP(NOTE_DELETE);
        KEVFFL_DUMP(NOTE_WRITE);
        KEVFFL_DUMP(NOTE_EXTEND);
#if HAVE_NOTE_TRUNCATE
        KEVFFL_DUMP(NOTE_TRUNCATE);
#endif
        KEVFFL_DUMP(NOTE_ATTRIB);
        KEVFFL_DUMP(NOTE_LINK);
        KEVFFL_DUMP(NOTE_RENAME);
#if HAVE_NOTE_REVOKE
        KEVFFL_DUMP(NOTE_REVOKE);
#endif
        buf[FUNC4(buf) - 1] = ')';
    } else {
        FUNC3(buf, 1024, "fflags = %x", kev->fflags);
    }

    return (buf);
}