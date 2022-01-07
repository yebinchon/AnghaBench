
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int flags; int fflags; } ;


 int EVFILT_USER ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int NOTE_FFCTRLMASK ;
 int NOTE_TRIGGER ;
 int kevent_add (int ,struct kevent*,int,int ,int,int ,int ,int *) ;
 int kevent_cmp (struct kevent*,int ) ;
 int kevent_get (int ) ;
 int kqfd ;
 int puts (char*) ;
 int success () ;
 int test_begin (char const*) ;
 int test_no_kevents () ;

__attribute__((used)) static void
oneshot(void)
{
    const char *test_id = "kevent(EVFILT_USER, EV_ONESHOT)";
    struct kevent kev;

    test_begin(test_id);

    test_no_kevents();

    kevent_add(kqfd, &kev, 2, EVFILT_USER, EV_ADD | EV_ONESHOT, 0, 0, ((void*)0));

    puts("  -- event 1");
    kevent_add(kqfd, &kev, 2, EVFILT_USER, 0, NOTE_TRIGGER, 0, ((void*)0));

    kev.flags = EV_ONESHOT;
    kev.fflags &= ~NOTE_FFCTRLMASK;
    kev.fflags &= ~NOTE_TRIGGER;
    kevent_cmp(&kev, kevent_get(kqfd));

    test_no_kevents();

    success();
}
