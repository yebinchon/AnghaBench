
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_and_delete () ;
 int close (int ) ;
 int disable_and_enable () ;
 int event_wait () ;
 int kqfd ;
 int kqueue () ;
 int oneshot () ;

void
test_evfilt_user()
{
    kqfd = kqueue();

    add_and_delete();
    event_wait();
    disable_and_enable();
    oneshot();


    close(kqfd);
}
