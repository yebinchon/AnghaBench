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
struct secasvar {int /*<<< orphan*/ * tdb_xform; TYPE_1__* key_auth; } ;
struct TYPE_2__ {int /*<<< orphan*/  key_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct secasvar *sav)
{

	if (sav->key_auth != NULL)
		FUNC1(sav->key_auth->key_data, FUNC0(sav->key_auth));
	sav->tdb_xform = NULL;
	return (0);
}