
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int data; int fflags; int flags; } ;


 int EVFILT_TIMER ;
 int EV_ADD ;
 int EV_CLEAR ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int ,int ,int,int ,long,int *) ;
 long MS_TO_US (int) ;
 int NOTE_USECONDS ;
 int err (int,char*,char const*) ;
 int errx (int,char*,long) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kevent_cmp (struct kevent*,int ) ;
 int kevent_get (int ) ;
 int kqfd ;
 int mssleep (int) ;
 long now () ;
 int printf (char*,long) ;
 int success () ;
 int test_begin (char const*) ;
 int test_no_kevents () ;
 int vnode_fd ;

__attribute__((used)) static void
test_update_expired(void)
{
    const char *test_id = "kevent(EVFILT_TIMER (UPDATE EXP), EV_ADD | EV_ONESHOT)";
    struct kevent kev;
    long elapsed;
    long start;

    test_begin(test_id);

    test_no_kevents();


    EV_SET(&kev, vnode_fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT,
        NOTE_USECONDS, MS_TO_US(1), ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);


    mssleep(2);


    start = now();
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);


    kev.flags |= EV_CLEAR;
    kev.fflags &= ~NOTE_USECONDS;
    kev.data = 1;
    kevent_cmp(&kev, kevent_get(kqfd));
    elapsed = now() - start;





    printf("timer expired after %ld us\n", elapsed);
    if (elapsed < MS_TO_US(1))
        errx(1, "early timer expiration: %ld us", elapsed);





    mssleep(2);
    test_no_kevents();

    success();
}
