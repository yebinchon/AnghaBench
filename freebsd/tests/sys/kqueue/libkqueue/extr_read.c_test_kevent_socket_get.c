
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int data; int flags; } ;


 int EVFILT_READ ;
 int EV_ADD ;
 int EV_DELETE ;
 int EV_SET (struct kevent*,int ,int ,int ,int ,int ,int *) ;
 int err (int,char*,char const*) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kevent_cmp (struct kevent*,int ) ;
 int kevent_get (int ) ;
 int kevent_socket_drain () ;
 int kevent_socket_fill () ;
 int kqfd ;
 int * sockfd ;
 int success () ;
 int test_begin (char const*) ;
 int test_no_kevents () ;

void
test_kevent_socket_get(void)
{
    const char *test_id = "kevent(EVFILT_READ) wait";
    struct kevent kev;

    test_begin(test_id);

    EV_SET(&kev, sockfd[0], EVFILT_READ, EV_ADD, 0, 0, &sockfd[0]);
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    kevent_socket_fill();

    kev.data = 1;
    kevent_cmp(&kev, kevent_get(kqfd));

    kevent_socket_drain();
    test_no_kevents();

    kev.flags = EV_DELETE;
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    success();
}
