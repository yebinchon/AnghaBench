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
struct bhnd_erom_io {int dummy; } ;
struct bhnd_chipid {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;
typedef  TYPE_1__* kobj_class_t ;
typedef  int /*<<< orphan*/  bhnd_erom_t ;
typedef  int /*<<< orphan*/  bhnd_erom_class_t ;
struct TYPE_3__ {size_t size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct bhnd_chipid const*,struct bhnd_erom_io*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int
FUNC2(bhnd_erom_class_t *cls, bhnd_erom_t *erom, size_t esize,
    const struct bhnd_chipid *cid, struct bhnd_erom_io *eio)
{
	kobj_class_t	kcls;

	kcls = (kobj_class_t)cls;

	/* Verify allocation size */
	if (kcls->size > esize)
		return (ENOMEM);

	/* Perform instance initialization */
	FUNC1((kobj_t)erom, kcls);
	return (FUNC0(erom, cid, eio)); 
}