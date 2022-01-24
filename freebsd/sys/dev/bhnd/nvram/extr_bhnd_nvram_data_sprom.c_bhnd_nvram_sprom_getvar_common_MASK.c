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
typedef  union bhnd_nvram_sprom_storage {int dummy; } bhnd_nvram_sprom_storage ;
struct bhnd_nvram_vardefn {int dummy; } ;
struct bhnd_nvram_sprom {int /*<<< orphan*/  data; int /*<<< orphan*/  state; } ;
struct bhnd_nvram_data {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_sprom_opcode_idx_entry ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct bhnd_nvram_vardefn* FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,union bhnd_nvram_sprom_storage*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct bhnd_nvram_data *nv, void *cookiep,
    union bhnd_nvram_sprom_storage *storage, bhnd_nvram_val *val)
{
	struct bhnd_nvram_sprom		*sp;
	bhnd_sprom_opcode_idx_entry	*entry;
	const struct bhnd_nvram_vardefn	*var;

	FUNC0(cookiep != NULL, ("NULL variable cookiep"));

	sp = (struct bhnd_nvram_sprom *)nv;
	entry = cookiep;

	/* Fetch canonical variable definition */
	var = FUNC1(cookiep);
	FUNC0(var != NULL, ("invalid cookiep %p", cookiep));

	return (FUNC2(&sp->state, entry, sp->data, storage,
	    val));
}