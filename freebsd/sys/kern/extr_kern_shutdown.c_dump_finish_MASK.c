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
struct kerneldumpheader {scalar_t__ parity; int /*<<< orphan*/  dumplength; } ;
struct dumperinfo {TYPE_1__* kdcomp; scalar_t__ origdumpoff; scalar_t__ dumpoff; int /*<<< orphan*/  blocksize; int /*<<< orphan*/ * blockbuf; } ;
struct TYPE_2__ {int /*<<< orphan*/  kdc_stream; scalar_t__ kdc_resid; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dumperinfo*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dumperinfo*,struct kerneldumpheader*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct kerneldumpheader*) ; 

int
FUNC6(struct dumperinfo *di, struct kerneldumpheader *kdh)
{
	int error;

	if (di->kdcomp != NULL) {
		error = FUNC0(di->kdcomp->kdc_stream);
		if (error == EAGAIN) {
			/* We have residual data in di->blockbuf. */
			error = FUNC2(di, di->blockbuf, 0, di->dumpoff,
			    di->blocksize);
			di->dumpoff += di->kdcomp->kdc_resid;
			di->kdcomp->kdc_resid = 0;
		}
		if (error != 0)
			return (error);

		/*
		 * We now know the size of the compressed dump, so update the
		 * header accordingly and recompute parity.
		 */
		kdh->dumplength = FUNC4(di->dumpoff - di->origdumpoff);
		kdh->parity = 0;
		kdh->parity = FUNC5(kdh);

		FUNC1(di->kdcomp->kdc_stream);
	}

	error = FUNC3(di, kdh);
	if (error != 0)
		return (error);

	(void)FUNC2(di, NULL, 0, 0, 0);
	return (0);
}