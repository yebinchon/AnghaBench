#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  am_failure; int /*<<< orphan*/  am_success; } ;
typedef  TYPE_1__ au_mask_t ;
struct TYPE_6__ {int /*<<< orphan*/  ac_class; } ;
typedef  TYPE_2__ au_class_ent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (char const*) ; 

__attribute__((used)) static au_mask_t
FUNC2(const char *name)
{
	au_mask_t fmask;
	au_class_ent_t *class;

	FUNC0((class = FUNC1(name)) != NULL);
	fmask.am_success = class->ac_class;
	fmask.am_failure = class->ac_class;
	return (fmask);
}