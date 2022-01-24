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
struct bhnd_service_entry {scalar_t__ refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_service_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bhnd_service_entry *entry)
{
	FUNC0(entry->refs == 0, ("provider has active references"));
	FUNC1(entry, M_BHND);
}