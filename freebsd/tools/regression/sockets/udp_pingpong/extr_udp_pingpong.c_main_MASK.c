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
 int /*<<< orphan*/  TT_BINTIME ; 
 int /*<<< orphan*/  TT_MONOTONIC ; 
 int /*<<< orphan*/  TT_REALTIME ; 
 int /*<<< orphan*/  TT_REALTIME_MICRO ; 
 int /*<<< orphan*/  TT_TIMESTAMP ; 
 int /*<<< orphan*/  TT_TS_BINTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,char*) ; 

int
FUNC4(void)
{
    int i;

    FUNC2();

    for (i = 0; i < 2; i++) {
        FUNC3(0, i, 0, "send()/recv()");
        FUNC1("OK\n");
        FUNC3(TT_TIMESTAMP, i, 1,
          "send()/recvmsg(), setsockopt(SO_TIMESTAMP, 1)");
        FUNC1("OK\n");
        if (i == 0) {
            FUNC3(TT_BINTIME, i, 1,
              "send()/recvmsg(), setsockopt(SO_BINTIME, 1)");
            FUNC1("OK\n");
        }
        FUNC3(TT_REALTIME_MICRO, i, 1,
          "send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_REALTIME_MICRO)");
        FUNC1("OK\n");
        FUNC3(TT_TS_BINTIME, i, 1,
          "send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_BINTIME)");
        FUNC1("OK\n");
        FUNC3(TT_REALTIME, i, 1,
          "send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_REALTIME)");
        FUNC1("OK\n");
        FUNC3(TT_MONOTONIC, i, 1,
          "send()/recvmsg(), setsockopt(SO_TS_CLOCK, SO_TS_MONOTONIC)");
        FUNC1("OK\n");
    }
    FUNC0(0);
}