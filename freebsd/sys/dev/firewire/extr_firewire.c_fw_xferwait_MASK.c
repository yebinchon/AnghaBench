#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mtx {int dummy; } ;
struct fw_xfer {int flag; TYPE_1__* fc; } ;
struct TYPE_2__ {struct mtx wait_lock; } ;

/* Variables and functions */
 int FWXF_WAKE ; 
 int PCATCH ; 
 int PWAIT ; 
 int FUNC0 (struct fw_xfer*,struct mtx*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 

int
FUNC3(struct fw_xfer *xfer)
{
	struct mtx *lock = &xfer->fc->wait_lock;
	int err = 0;

	FUNC1(lock);
	while ((xfer->flag & FWXF_WAKE) == 0)
		err = FUNC0(xfer, lock, PWAIT|PCATCH, "fw_xferwait", 0);
	FUNC2(lock);

	return (err);
}