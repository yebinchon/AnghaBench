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
struct bhnd_nvram_bcm_hvar {int dummy; } ;
struct bhnd_nvram_bcm {struct bhnd_nvram_bcm_hvar* hvars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct bhnd_nvram_bcm*,void*) ; 

__attribute__((used)) static size_t
FUNC2(struct bhnd_nvram_bcm *bcm,
    struct bhnd_nvram_bcm_hvar *hdrvar)
{
	FUNC0(FUNC1(bcm, (void *)hdrvar) != NULL,
	    ("%p is not a valid hdrvar reference", hdrvar));

	return (hdrvar - &bcm->hvars[0]);
}