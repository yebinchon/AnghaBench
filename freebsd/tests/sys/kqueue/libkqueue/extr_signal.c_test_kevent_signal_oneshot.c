
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int data; int flags; } ;
typedef int sigset_t ;


 int EVFILT_SIGNAL ;
 int EV_ADD ;
 int EV_CLEAR ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int ,int ,int,int ,int ,int *) ;
 int SIGUSR1 ;
 int SIG_BLOCK ;
 int err (int,char*,...) ;
 int getpid () ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kevent_cmp (struct kevent*,int ) ;
 int kevent_get (int ) ;
 scalar_t__ kill (int ,int ) ;
 int kqfd ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int success () ;
 int test_begin (char const*) ;
 int test_no_kevents () ;

void
test_kevent_signal_oneshot(void)
{
    const char *test_id = "kevent(EVFILT_SIGNAL, EV_ONESHOT)";
    struct kevent kev;

    test_begin(test_id);

    EV_SET(&kev, SIGUSR1, EVFILT_SIGNAL, EV_ADD | EV_ONESHOT, 0, 0, ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);


    sigset_t mask;
    sigemptyset(&mask);
    sigaddset(&mask, SIGUSR1);
    if (sigprocmask(SIG_BLOCK, &mask, ((void*)0)) == -1)
        err(1, "sigprocmask");
    if (kill(getpid(), SIGUSR1) < 0)
        err(1, "kill");

    kev.flags |= EV_CLEAR;
    kev.data = 1;
    kevent_cmp(&kev, kevent_get(kqfd));


    if (kill(getpid(), SIGUSR1) < 0)
        err(1, "kill");
    test_no_kevents();

    success();
}
