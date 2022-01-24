#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_MAX_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 char* FUNC1 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static void FUNC3(int patchlen, struct object_id *id, struct object_id *result)
{
	char name[GIT_MAX_HEXSZ + 1];

	if (!patchlen)
		return;

	FUNC0(name, FUNC1(id), the_hash_algo->hexsz + 1);
	FUNC2("%s %s\n", FUNC1(result), name);
}