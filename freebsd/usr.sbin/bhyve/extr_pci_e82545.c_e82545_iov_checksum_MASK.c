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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static uint16_t
FUNC3(struct iovec *iov, int iovcnt, int off, int len)
{
	int now, odd;
	uint32_t sum = 0, s;

	/* Skip completely unneeded vectors. */
	while (iovcnt > 0 && iov->iov_len <= off && off > 0) {
		off -= iov->iov_len;
		iov++;
		iovcnt--;
	}

	/* Calculate checksum of requested range. */
	odd = 0;
	while (len > 0 && iovcnt > 0) {
		now = FUNC0(len, iov->iov_len - off);
		s = FUNC1(iov->iov_base + off, now);
		sum += odd ? (s << 8) : s;
		odd ^= (now & 1);
		len -= now;
		off = 0;
		iov++;
		iovcnt--;
	}

	return (FUNC2(sum));
}