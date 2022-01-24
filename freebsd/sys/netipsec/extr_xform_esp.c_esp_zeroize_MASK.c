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
struct secasvar {int /*<<< orphan*/ * tdb_xform; int /*<<< orphan*/ * tdb_encalgxform; TYPE_1__* key_enc; } ;
struct TYPE_2__ {int /*<<< orphan*/  key_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct secasvar*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct secasvar *sav)
{
	/* NB: ah_zerorize free's the crypto session state */
	int error = FUNC1(sav);

	if (sav->key_enc)
		FUNC2(sav->key_enc->key_data, FUNC0(sav->key_enc));
	sav->tdb_encalgxform = NULL;
	sav->tdb_xform = NULL;
	return error;
}