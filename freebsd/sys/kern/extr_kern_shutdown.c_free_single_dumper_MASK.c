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
struct dumperinfo {int blocksize; int kdc_dumpkeysize; struct dumperinfo* kdcrypto; struct dumperinfo* blockbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DUMPER ; 
 int /*<<< orphan*/  M_EKCD ; 
 int /*<<< orphan*/  FUNC0 (struct dumperinfo*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dumperinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dumperinfo*) ; 

__attribute__((used)) static void
FUNC3(struct dumperinfo *di)
{

	if (di == NULL)
		return;

	if (di->blockbuf != NULL) {
		FUNC0(di->blockbuf, di->blocksize);
		FUNC1(di->blockbuf, M_DUMPER);
	}

	FUNC2(di);

#ifdef EKCD
	if (di->kdcrypto != NULL) {
		explicit_bzero(di->kdcrypto, sizeof(*di->kdcrypto) +
		    di->kdcrypto->kdc_dumpkeysize);
		free(di->kdcrypto, M_EKCD);
	}
#endif

	FUNC0(di, sizeof(*di));
	FUNC1(di, M_DUMPER);
}