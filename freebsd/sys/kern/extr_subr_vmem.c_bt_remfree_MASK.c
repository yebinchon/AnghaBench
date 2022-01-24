#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vmem_t ;
struct TYPE_4__ {scalar_t__ bt_type; } ;
typedef  TYPE_1__ bt_t ;

/* Variables and functions */
 scalar_t__ BT_TYPE_FREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  bt_freelist ; 

__attribute__((used)) static void
FUNC2(vmem_t *vm, bt_t *bt)
{

	FUNC1(bt->bt_type == BT_TYPE_FREE);

	FUNC0(bt, bt_freelist);
}