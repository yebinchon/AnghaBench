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
struct iovec {size_t iov_len; void* iov_base; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct iovec*,int) ; 

__attribute__((used)) static ssize_t
FUNC1(int d, void *buf, size_t nbytes)
{
	struct iovec iov;

	iov.iov_base = buf;
	iov.iov_len = nbytes;
	return (FUNC0(d, &iov, 1));
}