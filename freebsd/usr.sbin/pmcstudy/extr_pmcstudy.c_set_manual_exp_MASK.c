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
struct expression {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct expression*) ; 
 int /*<<< orphan*/  command ; 
 int /*<<< orphan*/  expression ; 
 char* threshold ; 
 int /*<<< orphan*/  user_expr ; 

__attribute__((used)) static void
FUNC1(struct expression *exp)
{
	expression = user_expr;
	command = FUNC0(exp);
	threshold = "User defined threshold";
}