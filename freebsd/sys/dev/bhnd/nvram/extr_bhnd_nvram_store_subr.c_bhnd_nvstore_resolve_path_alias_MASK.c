#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct bhnd_nvram_store {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_nvstore_path ;
struct TYPE_3__ {int /*<<< orphan*/ * path; } ;
typedef  TYPE_1__ bhnd_nvstore_alias ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 TYPE_1__* FUNC1 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 

bhnd_nvstore_path *
FUNC2(struct bhnd_nvram_store *sc, u_long aval)
{
	bhnd_nvstore_alias *alias;

	FUNC0(sc, MA_OWNED);

	/* Fetch alias entry */
	if ((alias = FUNC1(sc, aval)) == NULL)
		return (NULL);

	return (alias->path);
}