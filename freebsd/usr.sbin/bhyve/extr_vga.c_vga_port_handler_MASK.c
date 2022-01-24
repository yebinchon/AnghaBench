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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vmctx*,int,int,int,int*,void*) ; 
 int FUNC2 (struct vmctx*,int,int,int,int,void*) ; 

__attribute__((used)) static int
FUNC3(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
		 uint32_t *eax, void *arg)
{
	uint8_t val;
	int error;

	switch (bytes) {
	case 1:
		if (in) {
			*eax &= ~0xff;
			error = FUNC1(ctx, in, port, 1,
						    &val, arg);
			if (!error) {
				*eax |= val & 0xff;
			}
		} else {
			val = *eax & 0xff;
			error = FUNC2(ctx, in, port, 1,
						     val, arg);
		}
		break;
	case 2:
		if (in) {
			*eax &= ~0xffff;
			error = FUNC1(ctx, in, port, 1,
						    &val, arg);
			if (!error) {
				*eax |= val & 0xff;
			}
			error = FUNC1(ctx, in, port + 1, 1,
						    &val, arg);
			if (!error) {
				*eax |= (val & 0xff) << 8;
			}
		} else {
			val = *eax & 0xff;
			error = FUNC2(ctx, in, port, 1,
						     val, arg);
			val = (*eax >> 8) & 0xff;
			error =FUNC2(ctx, in, port + 1, 1,
						    val, arg);
		}
		break;
	default:
		FUNC0(0);
		return (-1);
	}

	return (error);
}