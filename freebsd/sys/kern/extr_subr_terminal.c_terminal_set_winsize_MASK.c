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
typedef  int /*<<< orphan*/  term_attr_t ;
struct winsize {int dummy; } ;
struct terminal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  default_message ; 
 int /*<<< orphan*/  FUNC0 (struct terminal*,struct winsize const*,int,int /*<<< orphan*/  const*) ; 

void
FUNC1(struct terminal *tm, const struct winsize *size)
{

	FUNC0(tm, size, 1,
	    (const term_attr_t *)&default_message);
}