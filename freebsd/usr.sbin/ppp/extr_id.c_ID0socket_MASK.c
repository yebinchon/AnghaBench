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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LogID0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int FUNC3 (int,int,int) ; 

int
FUNC4(int domain, int type, int protocol)
{
  int ret;

  FUNC0();
  ret = FUNC3(domain, type, protocol);
  FUNC2(LogID0, "%d = socket(%d, %d, %d)\n", ret, domain, type, protocol);
  FUNC1();
  return ret;
}