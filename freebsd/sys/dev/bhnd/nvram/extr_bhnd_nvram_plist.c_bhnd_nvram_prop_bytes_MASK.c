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
typedef  scalar_t__ bhnd_nvram_type ;
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ bhnd_nvram_prop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,size_t*,scalar_t__*) ; 

const void *
FUNC3(bhnd_nvram_prop *prop, size_t *olen,
    bhnd_nvram_type *otype)
{
	const void *bytes;

	bytes = FUNC2(prop->val, olen, otype);
	FUNC0(*otype == FUNC1(prop), ("type mismatch"));

	return (bytes);
}