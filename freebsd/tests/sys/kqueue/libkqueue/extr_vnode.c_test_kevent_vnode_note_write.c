
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int fflags; int flags; } ;


 int EVFILT_VNODE ;
 int EV_ADD ;
 int EV_ENABLE ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int ,int ,int,int ,int ,int *) ;
 int NOTE_EXTEND ;
 int NOTE_WRITE ;
 int err (int,char*,...) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kevent_cmp (struct kevent*,int ) ;
 int kevent_get (int ) ;
 int kqfd ;
 int success () ;
 scalar_t__ system (char*) ;
 int test_begin (char const*) ;
 int vnode_fd ;

void
test_kevent_vnode_note_write(void)
{
    const char *test_id = "kevent(EVFILT_VNODE, NOTE_WRITE)";
    struct kevent kev;

    test_begin(test_id);

    EV_SET(&kev, vnode_fd, EVFILT_VNODE, EV_ADD | EV_ONESHOT, NOTE_WRITE, 0, ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    if (system("echo hello >> ./kqueue-test.tmp") < 0)
        err(1, "system");



    kev.flags &= ~EV_ENABLE;
    kev.fflags |= NOTE_EXTEND;
    kevent_cmp(&kev, kevent_get(kqfd));

    success();
}
