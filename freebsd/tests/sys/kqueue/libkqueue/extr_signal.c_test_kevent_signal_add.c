
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;


 int EVFILT_SIGNAL ;
 int EV_ADD ;
 int EV_SET (struct kevent*,int ,int ,int ,int ,int ,int *) ;
 int SIGUSR1 ;
 int err (int,char*,char const*) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kqfd ;
 int success () ;
 int test_begin (char const*) ;

void
test_kevent_signal_add(void)
{
    const char *test_id = "kevent(EVFILT_SIGNAL, EV_ADD)";
    struct kevent kev;

    test_begin(test_id);

    EV_SET(&kev, SIGUSR1, EVFILT_SIGNAL, EV_ADD, 0, 0, ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    success();
}
