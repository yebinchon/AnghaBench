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
struct TYPE_3__ {int /*<<< orphan*/  countryCode; int /*<<< orphan*/  regDmnEnum; int /*<<< orphan*/  name; int /*<<< orphan*/  isoName; } ;
typedef  int /*<<< orphan*/  HAL_REG_DOMAIN ;
typedef  int /*<<< orphan*/  HAL_CTRY_CODE ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 TYPE_1__* allCountries ; 
 int nitems (TYPE_1__*) ; 
 scalar_t__ strcasecmp (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static HAL_BOOL
cclookup(const char *name, HAL_REG_DOMAIN *rd, HAL_CTRY_CODE *cc)
{
	int i;

	for (i = 0; i < nitems(allCountries); i++)
		if (strcasecmp(allCountries[i].isoName, name) == 0 ||
		    strcasecmp(allCountries[i].name, name) == 0) {
			*rd = allCountries[i].regDmnEnum;
			*cc = allCountries[i].countryCode;
			return AH_TRUE;
		}
	return AH_FALSE;
}