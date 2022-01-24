#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* local; char* peer; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_5__ {int fd; TYPE_1__ buf; scalar_t__ pid; } ;
struct chap {scalar_t__ peertries; TYPE_3__ challenge; TYPE_2__ child; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int*) ; 

__attribute__((used)) static void
FUNC9(struct chap *chap, int sig)
{
  if (chap->child.pid) {
    int status;

    FUNC4(chap->child.fd);
    chap->child.fd = -1;
    if (sig)
      FUNC5(chap->child.pid, SIGTERM);
    chap->child.pid = 0;
    chap->child.buf.len = 0;

    if (FUNC8(&status) == -1)
      FUNC6(LogERROR, "Chap: wait: %s\n", FUNC7(errno));
    else if (FUNC2(status))
      FUNC6(LogWARN, "Chap: Child received signal %d\n", FUNC3(status));
    else if (FUNC1(status) && FUNC0(status))
      FUNC6(LogERROR, "Chap: Child exited %d\n", FUNC0(status));
  }
  *chap->challenge.local = *chap->challenge.peer = '\0';
#ifndef NODES
  chap->peertries = 0;
#endif
}