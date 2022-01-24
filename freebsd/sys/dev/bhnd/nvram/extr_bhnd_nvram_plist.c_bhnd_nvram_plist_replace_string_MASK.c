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
typedef  int /*<<< orphan*/  bhnd_nvram_plist ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_TYPE_STRING ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 

int
FUNC2(bhnd_nvram_plist *plist, const char *name,
    const char *val)
{
	return (FUNC0(plist, name, val, FUNC1(val)+1,
	    BHND_NVRAM_TYPE_STRING));
}