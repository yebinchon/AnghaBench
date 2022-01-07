
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;


 int EVFILT_VNODE ;
 int EV_DELETE ;
 int EV_SET (struct kevent*,int ,int ,int ,int ,int ,int *) ;
 int err (int,char*,char const*) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kqfd ;
 int success () ;
 int test_begin (char const*) ;
 int vnode_fd ;

void
test_kevent_vnode_del(void)
{
    const char *test_id = "kevent(EVFILT_VNODE, EV_DELETE)";
    struct kevent kev;

    test_begin(test_id);

    EV_SET(&kev, vnode_fd, EVFILT_VNODE, EV_DELETE, 0, 0, ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    success();
}
