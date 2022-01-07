
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;


 int EVFILT_VNODE ;
 int EV_ADD ;
 int EV_SET (struct kevent*,scalar_t__,int ,int ,int,int ,int *) ;
 int NOTE_ATTRIB ;
 int NOTE_DELETE ;
 int NOTE_RENAME ;
 int NOTE_WRITE ;
 int O_RDONLY ;
 int err (int,char*,char const*) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kqfd ;
 scalar_t__ open (char const*,int ) ;
 int printf (char*,scalar_t__) ;
 int success () ;
 int system (char*) ;
 int test_begin (char const*) ;
 scalar_t__ vnode_fd ;

void
test_kevent_vnode_add(void)
{
    const char *test_id = "kevent(EVFILT_VNODE, EV_ADD)";
    const char *testfile = "./kqueue-test.tmp";
    struct kevent kev;

    test_begin(test_id);

    system("touch ./kqueue-test.tmp");
    vnode_fd = open(testfile, O_RDONLY);
    if (vnode_fd < 0)
        err(1, "open of %s", testfile);
    else
        printf("vnode_fd = %d\n", vnode_fd);

    EV_SET(&kev, vnode_fd, EVFILT_VNODE, EV_ADD,
            NOTE_WRITE | NOTE_ATTRIB | NOTE_RENAME | NOTE_DELETE, 0, ((void*)0));
    if (kevent(kqfd, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
        err(1, "%s", test_id);

    success();
}
