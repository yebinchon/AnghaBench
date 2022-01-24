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
typedef  int uint64_t ;
struct mod_item {int size; int /*<<< orphan*/  main_ptr; } ;
struct ifidx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mod_item*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(void *ta_buf, uint64_t *pflags)
{
	struct mod_item *mi;

	mi = (struct mod_item *)ta_buf;

	FUNC1(mi, 0, sizeof(struct mod_item));
	mi->size = *pflags;
	mi->main_ptr = FUNC0(sizeof(struct ifidx) * mi->size, M_IPFW,
	    M_WAITOK | M_ZERO);

	return (0);
}