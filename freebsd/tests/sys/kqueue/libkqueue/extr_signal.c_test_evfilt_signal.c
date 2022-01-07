
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int kqfd ;
 int kqueue () ;
 int test_kevent_signal_add () ;
 int test_kevent_signal_del () ;
 int test_kevent_signal_disable () ;
 int test_kevent_signal_enable () ;
 int test_kevent_signal_get () ;
 int test_kevent_signal_oneshot () ;

void
test_evfilt_signal()
{
    kqfd = kqueue();
    test_kevent_signal_add();
    test_kevent_signal_del();
    test_kevent_signal_get();
    test_kevent_signal_disable();
    test_kevent_signal_enable();
    test_kevent_signal_oneshot();
    close(kqfd);
}
