
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;


 int EVFILT_VNODE ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int ,int ,int,int ,int ,int *) ;
 int NOTE_DELETE ;
 int err (int,char*,...) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kevent_cmp (struct kevent*,int ) ;
 int kevent_get (int ) ;
 int kqfd ;
 int success () ;
 int test_begin (char const*) ;
 scalar_t__ unlink (char*) ;
 int vnode_fd ;

void
test_kevent_vnode_note_delete(void)
{
    const char *test_id = "kevent(EVFILT_VNODE, NOTE_DELETE)";
    struct kevent kev;

    test_begin(test_id);

    EV_SET(&kev, vnode_fd, EVFILT_VNODE, EV_ADD | EV_ONESHOT, NOTE_DELETE, 0, ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    if (unlink("./kqueue-test.tmp") < 0)
        err(1, "unlink");

    kevent_cmp(&kev, kevent_get(kqfd));

    success();
}
