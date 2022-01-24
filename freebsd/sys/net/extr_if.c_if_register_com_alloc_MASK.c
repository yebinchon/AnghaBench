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
typedef  size_t u_char ;
typedef  int /*<<< orphan*/  if_com_free_t ;
typedef  int /*<<< orphan*/  if_com_alloc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ ** if_com_alloc ; 
 int /*<<< orphan*/ ** if_com_free ; 

void
FUNC1(u_char type,
    if_com_alloc_t *a, if_com_free_t *f)
{
	
	FUNC0(if_com_alloc[type] == NULL,
	    ("if_register_com_alloc: %d already registered", type));
	FUNC0(if_com_free[type] == NULL,
	    ("if_register_com_alloc: %d free already registered", type));

	if_com_alloc[type] = a;
	if_com_free[type] = f;
}