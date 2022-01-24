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
struct iovec {scalar_t__ iov_len; int /*<<< orphan*/ * iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogERROR ; 
 int SCATTER_SEGMENTS ; 
 int /*<<< orphan*/  Version ; 
 int FUNC0 (int /*<<< orphan*/ *,struct iovec*,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3()
{
  struct iovec iov[SCATTER_SEGMENTS];
  int niov, expect, f;

  iov[0].iov_len = FUNC2(Version) + 1;
  iov[0].iov_base = NULL;
  niov = 1;
  if (FUNC0(NULL, iov, &niov, SCATTER_SEGMENTS, NULL, NULL) == -1) {
    FUNC1(LogERROR, "Cannot determine space required for link\n");
    return 0;
  }

  for (f = expect = 0; f < niov; f++)
    expect += iov[f].iov_len;

  return expect;
}