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
struct kerneldumpcomp {struct kerneldumpcomp* kdc_buf; int /*<<< orphan*/  kdc_stream; } ;
struct dumperinfo {int /*<<< orphan*/  maxiosize; struct kerneldumpcomp* kdcomp; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DUMPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kerneldumpcomp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kerneldumpcomp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct dumperinfo *di)
{
	struct kerneldumpcomp *kdcomp;

	kdcomp = di->kdcomp;
	if (kdcomp == NULL)
		return;
	FUNC0(kdcomp->kdc_stream);
	FUNC1(kdcomp->kdc_buf, di->maxiosize);
	FUNC2(kdcomp->kdc_buf, M_DUMPER);
	FUNC2(kdcomp, M_DUMPER);
}