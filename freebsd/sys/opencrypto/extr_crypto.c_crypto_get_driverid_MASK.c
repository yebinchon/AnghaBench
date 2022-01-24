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
struct cryptocap {int cc_flags; int cc_sessions; size_t cc_session_size; int /*<<< orphan*/ * cc_dev; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int CRYPTOCAP_F_CLEANUP ; 
 int CRYPTOCAP_F_HARDWARE ; 
 int CRYPTOCAP_F_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  M_CRYPTO_DATA ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (struct cryptocap*,struct cryptocap*,int) ; 
 scalar_t__ bootverbose ; 
 struct cryptocap* crypto_drivers ; 
 int crypto_drivers_num ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cryptocap*,int /*<<< orphan*/ ) ; 
 struct cryptocap* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int32_t
FUNC7(device_t dev, size_t sessionsize, int flags)
{
	struct cryptocap *newdrv;
	int i;

	if ((flags & (CRYPTOCAP_F_HARDWARE | CRYPTOCAP_F_SOFTWARE)) == 0) {
		FUNC6("%s: no flags specified when registering driver\n",
		    FUNC3(dev));
		return -1;
	}

	FUNC0();

	for (i = 0; i < crypto_drivers_num; i++) {
		if (crypto_drivers[i].cc_dev == NULL &&
		    (crypto_drivers[i].cc_flags & CRYPTOCAP_F_CLEANUP) == 0) {
			break;
		}
	}

	/* Out of entries, allocate some more. */
	if (i == crypto_drivers_num) {
		/* Be careful about wrap-around. */
		if (2 * crypto_drivers_num <= crypto_drivers_num) {
			FUNC1();
			FUNC6("crypto: driver count wraparound!\n");
			return -1;
		}

		newdrv = FUNC5(2 * crypto_drivers_num *
		    sizeof(struct cryptocap), M_CRYPTO_DATA, M_NOWAIT|M_ZERO);
		if (newdrv == NULL) {
			FUNC1();
			FUNC6("crypto: no space to expand driver table!\n");
			return -1;
		}

		FUNC2(crypto_drivers, newdrv,
		    crypto_drivers_num * sizeof(struct cryptocap));

		crypto_drivers_num *= 2;

		FUNC4(crypto_drivers, M_CRYPTO_DATA);
		crypto_drivers = newdrv;
	}

	/* NB: state is zero'd on free */
	crypto_drivers[i].cc_sessions = 1;	/* Mark */
	crypto_drivers[i].cc_dev = dev;
	crypto_drivers[i].cc_flags = flags;
	crypto_drivers[i].cc_session_size = sessionsize;
	if (bootverbose)
		FUNC6("crypto: assign %s driver id %u, flags 0x%x\n",
		    FUNC3(dev), i, flags);

	FUNC1();

	return i;
}