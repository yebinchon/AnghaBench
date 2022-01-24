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
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uds_name1 ; 
 int /*<<< orphan*/  uds_name2 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(void)
{
    int s_sock1, s_sock2, c_sock;

    FUNC0(cleanup);

    if (FUNC6(uds_name1) == -1)
	FUNC4(1, "mkstemp");
    FUNC8(uds_name1);
    s_sock1 = FUNC3(uds_name1);

    if (FUNC6(uds_name2) == -1)
        FUNC4(1, "mkstemp");
    FUNC8(uds_name2);
    s_sock2 = FUNC3(uds_name2);

    c_sock = FUNC7(PF_LOCAL, SOCK_DGRAM, 0);
    if (c_sock < 0)
        FUNC4(1, "can't create socket");

    FUNC2(c_sock, uds_name1);
    FUNC1(s_sock1);
    FUNC2(c_sock, uds_name2);
    FUNC1(s_sock2);

    FUNC5 (0);
}