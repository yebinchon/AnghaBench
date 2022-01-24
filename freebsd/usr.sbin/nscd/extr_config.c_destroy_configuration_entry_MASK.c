#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct configuration_entry* entry_name; } ;
struct TYPE_12__ {TYPE_5__ cep; } ;
struct TYPE_9__ {struct configuration_entry* entry_name; } ;
struct TYPE_10__ {TYPE_3__ cep; } ;
struct TYPE_7__ {struct configuration_entry* entry_name; } ;
struct TYPE_8__ {TYPE_1__ cep; } ;
struct configuration_entry {struct configuration_entry* mp_cache_entries; TYPE_6__ mp_cache_params; TYPE_4__ negative_cache_params; TYPE_2__ positive_cache_params; struct configuration_entry* name; int /*<<< orphan*/  mp_cache_lock; int /*<<< orphan*/  negative_cache_lock; int /*<<< orphan*/  positive_cache_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration_entry*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration_entry*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct configuration_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct configuration_entry *entry)
{
	FUNC0(destroy_configuration_entry);
	FUNC2(entry != NULL);
	FUNC4(&entry->positive_cache_lock);
	FUNC4(&entry->negative_cache_lock);
	FUNC4(&entry->mp_cache_lock);
	FUNC3(entry->name);
	FUNC3(entry->positive_cache_params.cep.entry_name);
	FUNC3(entry->negative_cache_params.cep.entry_name);
	FUNC3(entry->mp_cache_params.cep.entry_name);
	FUNC3(entry->mp_cache_entries);
	FUNC3(entry);
	FUNC1(destroy_configuration_entry);
}