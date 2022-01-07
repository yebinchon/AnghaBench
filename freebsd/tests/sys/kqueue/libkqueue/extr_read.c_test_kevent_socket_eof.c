
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int flags; } ;


 int EVFILT_READ ;
 int EV_ADD ;
 int EV_DELETE ;
 int EV_EOF ;
 int EV_SET (struct kevent*,int ,int ,int ,int ,int ,int *) ;
 scalar_t__ close (int ) ;
 int err (int,char*,...) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kevent_cmp (struct kevent*,int ) ;
 int kevent_get (int ) ;
 int kqfd ;
 int * sockfd ;
 int success () ;
 int test_begin (char const*) ;
 int test_no_kevents () ;

void
test_kevent_socket_eof(void)
{
    const char *test_id = "kevent(EVFILT_READ, EV_EOF)";
    struct kevent kev;

    test_begin(test_id);


    EV_SET(&kev, sockfd[0], EVFILT_READ, EV_ADD, 0, 0, &sockfd[0]);
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);
    test_no_kevents();

    if (close(sockfd[1]) < 0)
        err(1, "close(2)");

    kev.flags |= EV_EOF;
    kevent_cmp(&kev, kevent_get(kqfd));


    EV_SET(&kev, sockfd[0], EVFILT_READ, EV_DELETE, 0, 0, &sockfd[0]);
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    success();
}
