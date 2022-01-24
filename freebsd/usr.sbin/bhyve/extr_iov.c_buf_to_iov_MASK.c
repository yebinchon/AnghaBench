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
struct iovec {int /*<<< orphan*/  iov_base; int /*<<< orphan*/  iov_len; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct iovec*) ; 
 struct iovec* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct iovec*,int,struct iovec*,int*,size_t) ; 

ssize_t
FUNC5(const void *buf, size_t buflen, struct iovec *iov, int niov,
    size_t seek)
{
	struct iovec *diov;
	int ndiov, i;
	size_t off = 0, len;

	if (seek > 0) {
		diov = FUNC2(sizeof(struct iovec) * niov);
		FUNC4(iov, niov, diov, &ndiov, seek);
	} else {
		diov = iov;
		ndiov = niov;
	}

	for (i = 0; i < ndiov && off < buflen; i++) {
		len = FUNC0(diov[i].iov_len, buflen - off);
		FUNC3(diov[i].iov_base, buf + off, len);
		off += len;
	}

	if (seek > 0)
		FUNC1(diov);

	return ((ssize_t)off);
}