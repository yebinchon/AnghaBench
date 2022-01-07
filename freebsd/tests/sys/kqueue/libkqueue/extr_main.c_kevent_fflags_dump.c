
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {scalar_t__ filter; int fflags; } ;


 scalar_t__ EVFILT_PROC ;
 scalar_t__ EVFILT_PROCDESC ;
 scalar_t__ EVFILT_VNODE ;
 int KEVFFL_DUMP (int ) ;
 int NOTE_ATTRIB ;
 int NOTE_CHILD ;
 int NOTE_DELETE ;
 int NOTE_EXEC ;
 int NOTE_EXIT ;
 int NOTE_EXTEND ;
 int NOTE_FORK ;
 int NOTE_LINK ;
 int NOTE_RENAME ;
 int NOTE_REVOKE ;
 int NOTE_TRACK ;
 int NOTE_TRACKERR ;
 int NOTE_TRUNCATE ;
 int NOTE_WRITE ;
 int abort () ;
 char* calloc (int,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

char *
kevent_fflags_dump(struct kevent *kev)
{
    char *buf;





    if ((buf = calloc(1, 1024)) == ((void*)0))
        abort();


    if (kev->filter == EVFILT_PROC) {
        snprintf(buf, 1024, "fflags = %x (", kev->fflags);
        if (kev->fflags & NOTE_EXIT) strncat(buf, "NOTE_EXIT"" ", 64);;
        if (kev->fflags & NOTE_FORK) strncat(buf, "NOTE_FORK"" ", 64);;
        if (kev->fflags & NOTE_EXEC) strncat(buf, "NOTE_EXEC"" ", 64);;
        if (kev->fflags & NOTE_CHILD) strncat(buf, "NOTE_CHILD"" ", 64);;
        if (kev->fflags & NOTE_TRACKERR) strncat(buf, "NOTE_TRACKERR"" ", 64);;
        if (kev->fflags & NOTE_TRACK) strncat(buf, "NOTE_TRACK"" ", 64);;
        buf[strlen(buf) - 1] = ')';
    } else if (kev->filter == EVFILT_PROCDESC) {
        snprintf(buf, 1024, "fflags = %x (", kev->fflags);
        if (kev->fflags & NOTE_EXIT) strncat(buf, "NOTE_EXIT"" ", 64);;
        if (kev->fflags & NOTE_FORK) strncat(buf, "NOTE_FORK"" ", 64);;
        if (kev->fflags & NOTE_EXEC) strncat(buf, "NOTE_EXEC"" ", 64);;
        buf[strlen(buf) - 1] = ')';
    } else if (kev->filter == EVFILT_VNODE) {
        snprintf(buf, 1024, "fflags = %x (", kev->fflags);
        if (kev->fflags & NOTE_DELETE) strncat(buf, "NOTE_DELETE"" ", 64);;
        if (kev->fflags & NOTE_WRITE) strncat(buf, "NOTE_WRITE"" ", 64);;
        if (kev->fflags & NOTE_EXTEND) strncat(buf, "NOTE_EXTEND"" ", 64);;



        if (kev->fflags & NOTE_ATTRIB) strncat(buf, "NOTE_ATTRIB"" ", 64);;
        if (kev->fflags & NOTE_LINK) strncat(buf, "NOTE_LINK"" ", 64);;
        if (kev->fflags & NOTE_RENAME) strncat(buf, "NOTE_RENAME"" ", 64);;



        buf[strlen(buf) - 1] = ')';
    } else {
        snprintf(buf, 1024, "fflags = %x", kev->fflags);
    }

    return (buf);
}
