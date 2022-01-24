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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iovec {scalar_t__ iov_base; } ;
struct ck_info {int ck_start; int ck_off; int ck_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct iovec*,int,int,int) ; 

__attribute__((used)) static void
FUNC2(struct iovec *iov, int iovcnt, struct ck_info *ck)
{
	uint16_t cksum;
	int cklen;

	FUNC0("tx cksum: iovcnt/s/off/len %d/%d/%d/%d\r\n",
	    iovcnt, ck->ck_start, ck->ck_off, ck->ck_len);
	cklen = ck->ck_len ? ck->ck_len - ck->ck_start + 1 : INT_MAX;
	cksum = FUNC1(iov, iovcnt, ck->ck_start, cklen);
	*(uint16_t *)((uint8_t *)iov[0].iov_base + ck->ck_off) = ~cksum;
}