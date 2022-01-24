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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  bhnd_nvram_val_fmt ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_VAL_STORAGE_DYNAMIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(bhnd_nvram_val **value,
    const bhnd_nvram_val_fmt *fmt, bhnd_nvram_val *src, uint32_t flags)
{
	int error;

	/* Allocate new instance */
	if ((*value = FUNC0(sizeof(**value))) == NULL)
		return (ENOMEM);

	/* Perform common initialization. */
	error = FUNC1(*value,
	    BHND_NVRAM_VAL_STORAGE_DYNAMIC, fmt, src, flags);
	if (error) {
		/* Will also free() the value allocation */
		FUNC2(*value);
	}

	return (error);
}