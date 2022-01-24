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
struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;
struct bhnd_nvram_bcmraw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_data*) ; 
 int FUNC1 (struct bhnd_nvram_bcmraw*,struct bhnd_nvram_io*) ; 

__attribute__((used)) static int
FUNC2(struct bhnd_nvram_data *nv, struct bhnd_nvram_io *io)
{
	struct bhnd_nvram_bcmraw	*bcm;
	int				 error;

	bcm = (struct bhnd_nvram_bcmraw *)nv;

	/* Parse the BCM input data and initialize our backing
	 * data representation */
	if ((error = FUNC1(bcm, io))) {
		FUNC0(nv);
		return (error);
	}

	return (0);
}