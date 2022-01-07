
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;


 int EVFILT_TIMER ;
 int EV_DELETE ;
 int EV_SET (struct kevent*,int,int ,int ,int ,int ,int *) ;
 int err (int,char*,char const*) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kqfd ;
 int success () ;
 int test_begin (char const*) ;
 int test_no_kevents () ;

void
test_kevent_timer_del(void)
{
    const char *test_id = "kevent(EVFILT_TIMER, EV_DELETE)";
    struct kevent kev;

    test_begin(test_id);

    EV_SET(&kev, 1, EVFILT_TIMER, EV_DELETE, 0, 0, ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    test_no_kevents();

    success();
}
