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
struct bhnd_nvram_store {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_VAL_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_nvram_store*) ; 
 int FUNC2 (struct bhnd_nvram_store*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct bhnd_nvram_store *sc, const char *name)
{
	int error;

	FUNC0(sc);
	error = FUNC2(sc, name, BHND_NVRAM_VAL_NULL);
	FUNC1(sc);

	return (error);
}