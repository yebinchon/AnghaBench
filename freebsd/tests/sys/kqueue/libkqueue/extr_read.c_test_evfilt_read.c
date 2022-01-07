
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int SOCK_STREAM ;
 int abort () ;
 int close (int ) ;
 int kqfd ;
 int kqueue () ;
 scalar_t__ socketpair (int ,int ,int ,int ) ;
 int sockfd ;
 int test_kevent_socket_add () ;
 int test_kevent_socket_clear () ;
 int test_kevent_socket_del () ;
 int test_kevent_socket_disable_and_enable () ;
 int test_kevent_socket_dispatch () ;
 int test_kevent_socket_eof () ;
 int test_kevent_socket_get () ;
 int test_kevent_socket_oneshot () ;

void
test_evfilt_read()
{

    if (socketpair(AF_UNIX, SOCK_STREAM, 0, sockfd) < 0)
        abort();

    kqfd = kqueue();
    test_kevent_socket_add();
    test_kevent_socket_del();
    test_kevent_socket_get();
    test_kevent_socket_disable_and_enable();
    test_kevent_socket_oneshot();
    test_kevent_socket_clear();



    test_kevent_socket_eof();
    close(kqfd);
}
