
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct kevent {int flags; int data; scalar_t__ fflags; } ;
typedef int intmax_t ;


 int EVFILT_TIMER ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int ,int ,int,int,scalar_t__,int *) ;
 int NOTE_ABSTIME ;
 int NOTE_SECONDS ;
 int err (int,char*,char const*,...) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kevent_cmp (struct kevent*,int ) ;
 int kevent_get (int ) ;
 int kqfd ;
 int sleep (int) ;
 int success () ;
 int test_begin (char const*) ;
 int test_no_kevents () ;
 scalar_t__ time (int *) ;
 int vnode_fd ;

__attribute__((used)) static void
test_abstime(void)
{
    const char *test_id = "kevent(EVFILT_TIMER, EV_ONESHOT, NOTE_ABSTIME)";
    struct kevent kev;
    time_t start;
    time_t stop;
    const int timeout = 3;

    test_begin(test_id);

    test_no_kevents();

    start = time(((void*)0));
    EV_SET(&kev, vnode_fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT,
      NOTE_ABSTIME | NOTE_SECONDS, start + timeout, ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);


    kev.flags = EV_ADD | EV_ONESHOT;
    kev.data = 1;
    kev.fflags = 0;
    kevent_cmp(&kev, kevent_get(kqfd));
    stop = time(((void*)0));
    if (stop < start + timeout)
        err(1, "too early %jd %jd", (intmax_t)stop, (intmax_t)(start + timeout));


    sleep(3);
    test_no_kevents();

    success();
}
