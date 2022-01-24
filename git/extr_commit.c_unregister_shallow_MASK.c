#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct object_id {int /*<<< orphan*/  hash; } ;
struct TYPE_5__ {TYPE_1__* parsed_objects; } ;
struct TYPE_4__ {int grafts_nr; scalar_t__ grafts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* the_repository ; 

int FUNC2(const struct object_id *oid)
{
	int pos = FUNC1(the_repository, oid->hash);
	if (pos < 0)
		return -1;
	if (pos + 1 < the_repository->parsed_objects->grafts_nr)
		FUNC0(the_repository->parsed_objects->grafts + pos,
			   the_repository->parsed_objects->grafts + pos + 1,
			   the_repository->parsed_objects->grafts_nr - pos - 1);
	the_repository->parsed_objects->grafts_nr--;
	return 0;
}