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
struct pvclock_wall_clock {int version; int sec; int nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void
FUNC1(struct pvclock_wall_clock *wc, uint32_t *sec,
    uint32_t *nsec)
{
	uint32_t version;

	do {
		version = wc->version;
		FUNC0();
		*sec = wc->sec;
		*nsec = wc->nsec;
		FUNC0();
	} while ((wc->version & 1) != 0 || wc->version != version);
}