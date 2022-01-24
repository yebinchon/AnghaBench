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
struct TYPE_3__ {int /*<<< orphan*/  fpOut; int /*<<< orphan*/  fpIn; int /*<<< orphan*/  tree; int /*<<< orphan*/  symbol; int /*<<< orphan*/  inodesin; int /*<<< orphan*/  symbolsin; } ;
typedef  TYPE_1__ unpack_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(unpack_descriptor_t *unpackd)
{

	FUNC1(unpackd->symbolsin);
	FUNC1(unpackd->inodesin);
	FUNC1(unpackd->symbol);
	FUNC1(unpackd->tree);

	FUNC0(unpackd->fpIn);
	FUNC0(unpackd->fpOut);
}