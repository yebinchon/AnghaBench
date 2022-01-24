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
struct bhndb_intr_isrc {int /*<<< orphan*/  is_res; int /*<<< orphan*/  is_rid; int /*<<< orphan*/  is_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_intr_isrc*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct bhndb_intr_isrc *isrc)
{
	FUNC0(isrc->is_owner, SYS_RES_IRQ, isrc->is_rid,
	    isrc->is_res);
	FUNC1(isrc, M_BHND);
}