
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;
 int setlinebuf (int ) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int test_evfilt_proc () ;
 int test_evfilt_read () ;
 int test_evfilt_signal () ;
 int test_evfilt_timer () ;
 int test_evfilt_user () ;
 int test_evfilt_vnode () ;
 int test_kqueue () ;
 int test_kqueue_close () ;
 int testnum ;

int
main(int argc, char **argv)
{
    int test_proc = 1;
    int test_socket = 1;
    int test_signal = 1;
    int test_vnode = 1;
    int test_timer = 1;




    int test_user = 0;


    while (argc) {
        if (strcmp(argv[0], "--no-proc") == 0)
            test_proc = 0;
        if (strcmp(argv[0], "--no-socket") == 0)
            test_socket = 0;
        if (strcmp(argv[0], "--no-timer") == 0)
            test_timer = 0;
        if (strcmp(argv[0], "--no-signal") == 0)
            test_signal = 0;
        if (strcmp(argv[0], "--no-vnode") == 0)
            test_vnode = 0;
        if (strcmp(argv[0], "--no-user") == 0)
            test_user = 0;
        argv++;
        argc--;
    }







    setlinebuf(stdout);
    setlinebuf(stderr);

    test_kqueue();
    test_kqueue_close();

    if (test_socket)
        test_evfilt_read();
    if (test_signal)
        test_evfilt_signal();
    if (test_vnode)
        test_evfilt_vnode();




    if (test_timer)
        test_evfilt_timer();
    if (test_proc)
        test_evfilt_proc();

    printf("\n---\n"
            "+OK All %d tests completed.\n", testnum - 1);
    return (0);
}
