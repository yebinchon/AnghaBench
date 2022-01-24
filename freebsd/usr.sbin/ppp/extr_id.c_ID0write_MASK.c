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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,long) ; 
 int FUNC3 (int,void const*,size_t) ; 

int
FUNC4(int fd, const void *data, size_t len)
{
  int ret;

  FUNC0();
  ret = FUNC3(fd, data, len);
  FUNC2(LogID0, "%d = write(%d, data, %ld)\n", ret, fd, (long)len);
  FUNC1();
  return ret;
}