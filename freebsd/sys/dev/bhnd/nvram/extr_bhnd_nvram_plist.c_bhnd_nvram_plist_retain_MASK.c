#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int refs; } ;
typedef  TYPE_1__ bhnd_nvram_plist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

bhnd_nvram_plist *
FUNC2(bhnd_nvram_plist *plist)
{
	FUNC0(plist->refs >= 1, ("plist over-released"));

	FUNC1(&plist->refs);
	return (plist);
}