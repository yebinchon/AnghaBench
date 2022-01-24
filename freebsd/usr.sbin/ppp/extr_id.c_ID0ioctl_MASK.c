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
 int FUNC2 (int,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,unsigned long,void*) ; 

int
FUNC4(int fd, unsigned long req, void *arg)
{
  int ret;

  FUNC0();
  ret = FUNC2(fd, req, arg);
  FUNC3(LogID0, "%d = ioctl(%d, %lu, %p)\n", ret, fd, req, arg);
  FUNC1();
  return ret;
}