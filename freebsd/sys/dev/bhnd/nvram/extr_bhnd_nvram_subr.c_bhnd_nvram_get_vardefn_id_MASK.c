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
struct bhnd_nvram_vardefn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int bhnd_nvram_num_vardefns ; 
 struct bhnd_nvram_vardefn const* bhnd_nvram_vardefns ; 

size_t
FUNC1(const struct bhnd_nvram_vardefn *defn)
{
	FUNC0(
	    defn >= bhnd_nvram_vardefns &&
	    defn <= &bhnd_nvram_vardefns[bhnd_nvram_num_vardefns-1],
	    ("invalid variable definition pointer %p", defn));

	return (defn - bhnd_nvram_vardefns);
}