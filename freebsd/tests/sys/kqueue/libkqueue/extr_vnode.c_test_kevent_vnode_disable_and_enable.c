
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {scalar_t__ ident; scalar_t__ filter; scalar_t__ fflags; int flags; } ;


 scalar_t__ EVFILT_VNODE ;
 int EV_ADD ;
 int EV_DISABLE ;
 int EV_ENABLE ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,scalar_t__,scalar_t__,int,scalar_t__,int ,int *) ;
 scalar_t__ NOTE_ATTRIB ;
 int err (int,char*,...) ;
 int kevent (int ,struct kevent*,int,struct kevent*,int,int *) ;
 int kqfd ;
 int success () ;
 scalar_t__ system (char*) ;
 int test_begin (char const*) ;
 int test_no_kevents () ;
 scalar_t__ vnode_fd ;

void
test_kevent_vnode_disable_and_enable(void)
{
    const char *test_id = "kevent(EVFILT_VNODE, EV_DISABLE and EV_ENABLE)";
    struct kevent kev;
    int nfds;

    test_begin(test_id);

    test_no_kevents();


    EV_SET(&kev, vnode_fd, EVFILT_VNODE, EV_ADD | EV_ONESHOT, NOTE_ATTRIB, 0, ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);
    kev.flags = EV_DISABLE;
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);


    if (system("touch ./kqueue-test.tmp") < 0)
        err(1, "system");
    test_no_kevents();


    kev.flags = EV_ENABLE;
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);
    if (system("touch ./kqueue-test.tmp") < 0)
        err(1, "system");
    nfds = kevent(kqfd, ((void*)0), 0, &kev, 1, ((void*)0));
    if (nfds < 1)
        err(1, "%s", test_id);
    if (kev.ident != vnode_fd ||
            kev.filter != EVFILT_VNODE ||
            kev.fflags != NOTE_ATTRIB)
        err(1, "%s - incorrect event (sig=%u; filt=%d; flags=%d)",
                test_id, (unsigned int)kev.ident, kev.filter, kev.flags);

    success();
}
