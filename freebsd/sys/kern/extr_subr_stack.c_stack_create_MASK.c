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
struct stack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_STACK ; 
 int M_ZERO ; 
 struct stack* FUNC0 (int,int /*<<< orphan*/ ,int) ; 

struct stack *
FUNC1(int flags)
{
	struct stack *st;

	st = FUNC0(sizeof(*st), M_STACK, flags | M_ZERO);
	return (st);
}