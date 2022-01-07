
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int flags; int data; } ;


 int EVFILT_TIMER ;
 int EV_ADD ;
 int EV_CLEAR ;
 int EV_DISABLE ;
 int EV_ENABLE ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int ,int ,int,int ,int,int *) ;
 int err (int,char*,char const*) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kevent_cmp (struct kevent*,int ) ;
 int kevent_get (int ) ;
 int kqfd ;
 int success () ;
 int test_begin (char const*) ;
 int test_no_kevents () ;
 int vnode_fd ;

__attribute__((used)) static void
disable_and_enable(void)
{
    const char *test_id = "kevent(EVFILT_TIMER, EV_DISABLE and EV_ENABLE)";
    struct kevent kev;

    test_begin(test_id);

    test_no_kevents();


    EV_SET(&kev, vnode_fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT, 0, 2000,((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);
    kev.flags = EV_DISABLE;
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);
    test_no_kevents();


    kev.flags = EV_ENABLE;
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    kev.flags = EV_ADD | EV_CLEAR | EV_ONESHOT;
    kev.data = 1;
    kevent_cmp(&kev, kevent_get(kqfd));

    success();
}
