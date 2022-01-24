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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct vmctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ EALREADY ; 
 int /*<<< orphan*/  VM_SUSPEND_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (struct vmctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{
	int error;

	static uint8_t reset_control;

	if (bytes != 1)
		return (-1);
	if (in)
		*eax = reset_control;
	else {
		reset_control = *eax;

		/* Treat hard and soft resets the same. */
		if (reset_control & 0x4) {
			error = FUNC1(ctx, VM_SUSPEND_RESET);
			FUNC0(error == 0 || errno == EALREADY);
		}
	}
	return (0);
}