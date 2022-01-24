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
struct bhnd_nvram_vardefn {char const* name; } ;
struct bhnd_nvram_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct bhnd_nvram_vardefn* FUNC1 (void*) ; 

__attribute__((used)) static const char *
FUNC2(struct bhnd_nvram_data *nv, void *cookiep)
{
	const struct bhnd_nvram_vardefn	*var;

	FUNC0(cookiep != NULL, ("NULL variable cookiep"));

	var = FUNC1(cookiep);
	FUNC0(var != NULL, ("invalid cookiep %p", cookiep));

	return (var->name);
}