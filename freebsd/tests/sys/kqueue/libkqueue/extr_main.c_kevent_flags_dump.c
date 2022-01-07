
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int flags; } ;


 int EV_ADD ;
 int EV_CLEAR ;
 int EV_DELETE ;
 int EV_DISABLE ;
 int EV_DISPATCH ;
 int EV_ENABLE ;
 int EV_EOF ;
 int EV_ERROR ;
 int EV_ONESHOT ;
 int EV_RECEIPT ;
 int KEVFL_DUMP (int ) ;
 int abort () ;
 char* calloc (int,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

char *
kevent_flags_dump(struct kevent *kev)
{
    char *buf;





    if ((buf = calloc(1, 1024)) == ((void*)0))
        abort();

    snprintf(buf, 1024, "flags = %d (", kev->flags);
    if (kev->flags & EV_ADD) strncat(buf, "EV_ADD"" ", 64);;
    if (kev->flags & EV_ENABLE) strncat(buf, "EV_ENABLE"" ", 64);;
    if (kev->flags & EV_DISABLE) strncat(buf, "EV_DISABLE"" ", 64);;
    if (kev->flags & EV_DELETE) strncat(buf, "EV_DELETE"" ", 64);;
    if (kev->flags & EV_ONESHOT) strncat(buf, "EV_ONESHOT"" ", 64);;
    if (kev->flags & EV_CLEAR) strncat(buf, "EV_CLEAR"" ", 64);;
    if (kev->flags & EV_EOF) strncat(buf, "EV_EOF"" ", 64);;
    if (kev->flags & EV_ERROR) strncat(buf, "EV_ERROR"" ", 64);;






    buf[strlen(buf) - 1] = ')';

    return (buf);
}
