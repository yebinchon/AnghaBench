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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC0 (int,char*,size_t) ; 

ssize_t
FUNC1(int fd, void *v, size_t n)
{
  size_t got, total;

  for (total = 0; total < n; total += got)
    switch ((got = FUNC0(fd, (char *)v + total, n - total))) {
      case 0:
        return total;
      case -1:
        if (errno == EINTR)
          got = 0;
        else
          return -1;
    }
  return total;
}