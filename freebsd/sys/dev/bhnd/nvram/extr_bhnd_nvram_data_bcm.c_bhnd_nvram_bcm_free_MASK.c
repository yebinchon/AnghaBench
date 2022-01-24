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
struct bhnd_nvram_bcm {int /*<<< orphan*/ * opts; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct bhnd_nvram_data *nv)
{
	struct bhnd_nvram_bcm *bcm = (struct bhnd_nvram_bcm *)nv;

	if (bcm->data != NULL)
		FUNC0(bcm->data);

	if (bcm->opts != NULL)
		FUNC1(bcm->opts);
}