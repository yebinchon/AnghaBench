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
struct pfr_table {int dummy; } ;
struct pfr_ktable {int dummy; } ;

/* Variables and functions */
 struct pfr_ktable* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfr_ktable*) ; 
 int /*<<< orphan*/  V_pfr_ktables ; 
 int /*<<< orphan*/  pfr_ktablehead ; 

__attribute__((used)) static struct pfr_ktable *
FUNC1(struct pfr_table *tbl)
{
	/* struct pfr_ktable start like a struct pfr_table */
	return (FUNC0(pfr_ktablehead, &V_pfr_ktables,
	    (struct pfr_ktable *)tbl));
}