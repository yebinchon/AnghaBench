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
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ alarmed ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  sigalrm ; 
 int /*<<< orphan*/  sighup ; 
 int /*<<< orphan*/  sigint ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm ; 

void FUNC3(void)
{
    FUNC2(SIGINT, sigint);
    FUNC2(SIGTERM, sigterm);
    FUNC2(SIGHUP, sighup);

    FUNC1();
    FUNC2(SIGALRM, sigalrm);
    FUNC0(0);
    alarmed = 0;
}