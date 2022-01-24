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
struct bhnd_nvram_store {int /*<<< orphan*/ * root_path; } ;
typedef  int /*<<< orphan*/  bhnd_nvstore_path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 

bhnd_nvstore_path *
FUNC1(struct bhnd_nvram_store *sc)
{
	FUNC0(sc, MA_OWNED);
	return (sc->root_path);
}