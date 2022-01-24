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
typedef  int /*<<< orphan*/  uint64_t ;
struct vmctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct vmctx*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC2(struct vmctx *ctx, int vcpu, int reg)
{
	uint64_t val;
	int error;

	error = FUNC1(ctx, vcpu, reg, &val);
	FUNC0(error == 0);
	return (val);
}