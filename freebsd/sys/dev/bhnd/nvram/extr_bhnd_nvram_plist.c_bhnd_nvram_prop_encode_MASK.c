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
typedef  int /*<<< orphan*/  bhnd_nvram_type ;
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ bhnd_nvram_prop ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC1(bhnd_nvram_prop *prop, void *outp, size_t *olen,
    bhnd_nvram_type otype)
{
	return (FUNC0(prop->val, outp, olen, otype));
}