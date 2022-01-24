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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct nlm_fmn_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int*,int*,int*,struct nlm_fmn_msg*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void
FUNC3(u_int vcmask)
{
	struct nlm_fmn_msg msg;
	int srcid = 0, size = 0, code = 0, vc;
	uint32_t mflags, status;

	for (vc = 0; vc < 4; vc++) {
		for (;;) {
			mflags = FUNC2();
			status = FUNC0(vc, &srcid,
			    &size, &code, &msg);
			FUNC1(mflags);

			/* break if there is no msg or error */
			if (status != 0)
				break;
		}
	}
}