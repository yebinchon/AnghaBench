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
struct iovec {unsigned int iov_len; void* iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static __inline struct iovec *
FUNC1(struct iovec *iov, int *iovcnt, unsigned int tlen)
{
	struct iovec *riov;

	/* XXX short-cut: assume first segment is >= tlen */
	FUNC0(iov[0].iov_len >= tlen);

	iov[0].iov_len -= tlen;
	if (iov[0].iov_len == 0) {
		FUNC0(*iovcnt > 1);
		*iovcnt -= 1;
		riov = &iov[1];
	} else {
		iov[0].iov_base = (void *)((uintptr_t)iov[0].iov_base + tlen);
		riov = &iov[0];
	}

	return (riov);
}