
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int disable_and_enable () ;
 int kqfd ;
 int kqueue () ;
 int test_abstime () ;
 int test_kevent_timer_add () ;
 int test_kevent_timer_del () ;
 int test_kevent_timer_get () ;
 int test_oneshot () ;
 int test_periodic () ;
 int test_update () ;
 int test_update_equal () ;
 int test_update_expired () ;
 int test_update_periodic () ;
 int test_update_timing () ;

void
test_evfilt_timer()
{
    kqfd = kqueue();
    test_kevent_timer_add();
    test_kevent_timer_del();
    test_kevent_timer_get();
    test_oneshot();
    test_periodic();
    test_abstime();
    test_update();
    test_update_equal();
    test_update_expired();
    test_update_timing();
    test_update_periodic();
    disable_and_enable();
    close(kqfd);
}
