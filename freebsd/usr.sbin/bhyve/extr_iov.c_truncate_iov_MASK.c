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
struct iovec {size_t iov_len; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 

void
FUNC1(struct iovec *iov, int *niov, size_t length)
{
	size_t done = 0;
	int i;

	for (i = 0; i < *niov; i++) {
		size_t toseek = FUNC0(length - done, iov[i].iov_len);
		done += toseek;

		if (toseek <= iov[i].iov_len) {
			iov[i].iov_len = toseek;
			*niov = i + 1;
			return;
		}
	}
}