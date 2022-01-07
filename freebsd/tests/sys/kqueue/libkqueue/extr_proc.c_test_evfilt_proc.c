
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int SIG_DFL ;
 int add_and_delete () ;
 int close (int ) ;
 int event_trigger () ;
 int kqfd ;
 int kqueue () ;
 int proc_track (int) ;
 int sig_handler ;
 int signal (int ,int ) ;
 int test_kevent_signal_add () ;
 int test_kevent_signal_del () ;
 int test_kevent_signal_disable () ;
 int test_kevent_signal_enable () ;
 int test_kevent_signal_get () ;
 int test_kevent_signal_oneshot () ;

void
test_evfilt_proc()
{
    kqfd = kqueue();

    signal(SIGUSR1, sig_handler);

    add_and_delete();
    proc_track(0);
    proc_track(1);





    signal(SIGUSR1, SIG_DFL);
    close(kqfd);
}
