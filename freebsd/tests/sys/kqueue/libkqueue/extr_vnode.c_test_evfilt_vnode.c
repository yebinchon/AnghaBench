
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int kqfd ;
 int kqueue () ;
 int test_kevent_vnode_add () ;
 int test_kevent_vnode_del () ;
 int test_kevent_vnode_disable_and_enable () ;
 int test_kevent_vnode_dispatch () ;
 int test_kevent_vnode_note_attrib () ;
 int test_kevent_vnode_note_delete () ;
 int test_kevent_vnode_note_rename () ;
 int test_kevent_vnode_note_write () ;

void
test_evfilt_vnode()
{
    kqfd = kqueue();
    test_kevent_vnode_add();
    test_kevent_vnode_del();
    test_kevent_vnode_disable_and_enable();



    test_kevent_vnode_note_write();
    test_kevent_vnode_note_attrib();
    test_kevent_vnode_note_rename();
    test_kevent_vnode_note_delete();
    close(kqfd);
}
