#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uio {int dummy; } ;
struct fuse_ticket {int tk_aw_type; size_t tk_aw_bufsize; int /*<<< orphan*/  tk_aw_bufdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
#define  FT_A_BUF 129 
#define  FT_A_FIOV 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 TYPE_1__* FUNC1 (struct fuse_ticket*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct fuse_ticket*) ; 
 size_t FUNC3 (struct uio*) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,struct uio*) ; 

__attribute__((used)) static	inline
int
FUNC5(struct fuse_ticket *ftick, struct uio *uio)
{
	int err = 0;
	size_t len = FUNC3(uio);

	if (len) {
		switch (ftick->tk_aw_type) {
		case FT_A_FIOV:
			FUNC0(FUNC1(ftick), len);
			err = FUNC4(FUNC1(ftick)->base, len, uio);
			break;

		case FT_A_BUF:
			ftick->tk_aw_bufsize = len;
			err = FUNC4(ftick->tk_aw_bufdata, len, uio);
			break;

		default:
			FUNC2("FUSE: unknown answer type for ticket %p", ftick);
		}
	}
	return err;
}