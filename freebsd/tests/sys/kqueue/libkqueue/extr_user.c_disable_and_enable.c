
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int fflags; int flags; } ;


 int EVFILT_USER ;
 int EV_ADD ;
 int EV_CLEAR ;
 int EV_DISABLE ;
 int EV_ENABLE ;
 int NOTE_FFCTRLMASK ;
 int NOTE_TRIGGER ;
 int kevent_add (int ,struct kevent*,int,int ,int ,int ,int ,int *) ;
 int kevent_cmp (struct kevent*,int ) ;
 int kevent_get (int ) ;
 int kqfd ;
 int success () ;
 int test_begin (char const*) ;
 int test_no_kevents () ;

__attribute__((used)) static void
disable_and_enable(void)
{
    const char *test_id = "kevent(EVFILT_USER, EV_DISABLE and EV_ENABLE)";
    struct kevent kev;

    test_begin(test_id);

    test_no_kevents();

    kevent_add(kqfd, &kev, 1, EVFILT_USER, EV_ADD, 0, 0, ((void*)0));
    kevent_add(kqfd, &kev, 1, EVFILT_USER, EV_DISABLE, 0, 0, ((void*)0));


    kevent_add(kqfd, &kev, 1, EVFILT_USER, 0, NOTE_TRIGGER, 0, ((void*)0));
    test_no_kevents();

    kevent_add(kqfd, &kev, 1, EVFILT_USER, EV_ENABLE, 0, 0, ((void*)0));
    kevent_add(kqfd, &kev, 1, EVFILT_USER, 0, NOTE_TRIGGER, 0, ((void*)0));

    kev.flags = EV_CLEAR;
    kev.fflags &= ~NOTE_FFCTRLMASK;
    kev.fflags &= ~NOTE_TRIGGER;
    kevent_cmp(&kev, kevent_get(kqfd));

    success();
}
