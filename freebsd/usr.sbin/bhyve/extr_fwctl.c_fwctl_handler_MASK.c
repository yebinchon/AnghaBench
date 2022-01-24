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
struct vmctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{

	if (in) {
		if (bytes == 1)
			*eax = FUNC0();
		else if (bytes == 4)
			*eax = FUNC1();
		else
			*eax = 0xffff;
	} else {
		if (bytes == 2)
			FUNC3(*eax);
		else if (bytes == 4)
			FUNC2(*eax);
	}

	return (0);
}