#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int32_t ;
struct cryptocap {size_t cc_session_size; int cc_flags; int /*<<< orphan*/  cc_dev; scalar_t__ cc_sessions; } ;
typedef  TYPE_1__* crypto_session_t ;
struct TYPE_6__ {void* softc; } ;

/* Variables and functions */
 int CRYPTOCAP_F_CLEANUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  M_CRYPTO_DATA ; 
 struct cryptocap* crypto_drivers ; 
 size_t crypto_drivers_num ; 
 int /*<<< orphan*/  FUNC4 (struct cryptocap*) ; 
 size_t FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  cryptoses_zone ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC9(crypto_session_t cses)
{
	struct cryptocap *cap;
	void *ses;
	size_t ses_size;
	u_int32_t hid;

	if (cses == NULL)
		return;

	FUNC1();

	hid = FUNC5(cses);
	FUNC3(hid < crypto_drivers_num,
	    ("bogus crypto_session %p hid %u", cses, hid));
	cap = &crypto_drivers[hid];

	ses = cses->softc;
	ses_size = cap->cc_session_size;

	if (cap->cc_sessions)
		cap->cc_sessions--;

	/* Call the driver cleanup routine, if available. */
	FUNC0(cap->cc_dev, cses);

	FUNC6(ses, ses_size);
	FUNC7(ses, M_CRYPTO_DATA);
	FUNC8(cryptoses_zone, cses);

	if (cap->cc_flags & CRYPTOCAP_F_CLEANUP)
		FUNC4(cap);

	FUNC2();
}