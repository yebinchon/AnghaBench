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
struct bhnd_nvram_data {int dummy; } ;
struct bhnd_nvram_bcm_hvar {int dummy; } ;
struct bhnd_nvram_bcm {int dummy; } ;

/* Variables and functions */
 struct bhnd_nvram_bcm_hvar* FUNC0 (struct bhnd_nvram_bcm*,void*) ; 

__attribute__((used)) static int
FUNC1(struct bhnd_nvram_data *nv, void *cookiep1,
    void *cookiep2)
{
	struct bhnd_nvram_bcm		*bcm;
	struct bhnd_nvram_bcm_hvar	*hvar1, *hvar2;

	bcm = (struct bhnd_nvram_bcm *)nv;

	hvar1 = FUNC0(bcm, cookiep1);
	hvar2 = FUNC0(bcm, cookiep2);

	/* Header variables are always ordered below any variables defined
	 * in the BCM data */
	if (hvar1 != NULL && hvar2 == NULL) {
		return (1);	/* hvar follows non-hvar */
	} else if (hvar1 == NULL && hvar2 != NULL) {
		return (-1);	/* non-hvar precedes hvar */
	}

	/* Otherwise, both cookies are either hvars or non-hvars. We can
	 * safely fall back on pointer order, which will provide a correct
	 * ordering matching the behavior of bhnd_nvram_data_next() for
	 * both cases */
	if (cookiep1 < cookiep2)
		return (-1);

	if (cookiep1 > cookiep2)
		return (1);

	return (0);
}