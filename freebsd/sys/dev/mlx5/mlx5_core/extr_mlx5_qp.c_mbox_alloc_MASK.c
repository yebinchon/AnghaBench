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
struct mbox_info {int inlen; int outlen; void* out; void* in; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mbox_info *mbox, int inlen, int outlen)
{
	mbox->inlen  = inlen;
	mbox->outlen = outlen;
	mbox->in = FUNC1(mbox->inlen, GFP_KERNEL);
	mbox->out = FUNC1(mbox->outlen, GFP_KERNEL);
	if (!mbox->in || !mbox->out) {
		FUNC0(mbox->in);
		FUNC0(mbox->out);
		return -ENOMEM;
	}

	return 0;
}