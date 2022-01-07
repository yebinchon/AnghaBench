
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {scalar_t__ ident; scalar_t__ filter; scalar_t__ fflags; int flags; } ;


 scalar_t__ EVFILT_VNODE ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,scalar_t__,scalar_t__,int,scalar_t__,int ,int *) ;
 scalar_t__ NOTE_RENAME ;
 int err (int,char*,...) ;
 int kevent (int ,struct kevent*,int,struct kevent*,int,int *) ;
 int kqfd ;
 int success () ;
 scalar_t__ system (char*) ;
 int test_begin (char const*) ;
 scalar_t__ vnode_fd ;

void
test_kevent_vnode_note_rename(void)
{
    const char *test_id = "kevent(EVFILT_VNODE, NOTE_RENAME)";
    struct kevent kev;
    int nfds;

    test_begin(test_id);

    EV_SET(&kev, vnode_fd, EVFILT_VNODE, EV_ADD | EV_ONESHOT, NOTE_RENAME, 0, ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    if (system("mv ./kqueue-test.tmp ./kqueue-test2.tmp") < 0)
        err(1, "system");

    nfds = kevent(kqfd, ((void*)0), 0, &kev, 1, ((void*)0));
    if (nfds < 1)
        err(1, "%s", test_id);
    if (kev.ident != vnode_fd ||
            kev.filter != EVFILT_VNODE ||
            kev.fflags != NOTE_RENAME)
        err(1, "%s - incorrect event (sig=%u; filt=%d; flags=%d)",
                test_id, (unsigned int)kev.ident, kev.filter, kev.flags);

    if (system("mv ./kqueue-test2.tmp ./kqueue-test.tmp") < 0)
        err(1, "system");

    success();
}
