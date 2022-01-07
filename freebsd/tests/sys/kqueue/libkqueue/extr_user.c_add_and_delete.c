
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;


 int EVFILT_USER ;
 int EV_ADD ;
 int EV_DELETE ;
 int kevent_add (int ,struct kevent*,int,int ,int ,int ,int ,int *) ;
 int kqfd ;
 int success () ;
 int test_begin (char const*) ;
 int test_no_kevents () ;

__attribute__((used)) static void
add_and_delete(void)
{
    const char *test_id = "kevent(EVFILT_USER, EV_ADD and EV_DELETE)";
    struct kevent kev;

    test_begin(test_id);

    kevent_add(kqfd, &kev, 1, EVFILT_USER, EV_ADD, 0, 0, ((void*)0));
    test_no_kevents();

    kevent_add(kqfd, &kev, 1, EVFILT_USER, EV_DELETE, 0, 0, ((void*)0));
    test_no_kevents();

    success();
}
