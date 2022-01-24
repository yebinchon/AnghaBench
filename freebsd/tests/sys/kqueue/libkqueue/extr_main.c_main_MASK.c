#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int testnum ; 

int 
FUNC11(int argc, char **argv)
{
    int test_proc = 1;
    int test_socket = 1;
    int test_signal = 1;
    int test_vnode = 1;
    int test_timer = 1;
#ifdef __FreeBSD__
    int test_user = 1;
#else
    /* XXX-FIXME temporary */
    int test_user = 0;
#endif

    while (argc) {
        if (FUNC2(argv[0], "--no-proc") == 0)
            test_proc = 0;
        if (FUNC2(argv[0], "--no-socket") == 0)
            test_socket = 0;
        if (FUNC2(argv[0], "--no-timer") == 0)
            test_timer = 0;
        if (FUNC2(argv[0], "--no-signal") == 0)
            test_signal = 0;
        if (FUNC2(argv[0], "--no-vnode") == 0)
            test_vnode = 0;
        if (FUNC2(argv[0], "--no-user") == 0)
            test_user = 0;
        argv++;
        argc--;
    }

    /*
     * Some tests fork.  If output is fully buffered,
     * the children inherit some buffered data and flush
     * it when they exit, causing some data to be printed twice.
     * Use line buffering to avoid this problem.
     */
    FUNC1(stdout);
    FUNC1(stderr);

    FUNC9();
    FUNC10();

    if (test_socket) 
        FUNC4();
    if (test_signal) 
        FUNC5();
    if (test_vnode) 
        FUNC8();
#if HAVE_EVFILT_USER
    if (test_user) 
        test_evfilt_user();
#endif
    if (test_timer) 
        FUNC6();
    if (test_proc) 
        FUNC3();

    FUNC0("\n---\n"
            "+OK All %d tests completed.\n", testnum - 1);
    return (0);
}