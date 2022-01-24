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

/* Variables and functions */
 scalar_t__ script_cmd_args_len ; 
 int /*<<< orphan*/  script_ptr ; 
 int /*<<< orphan*/ * script_stack ; 
 size_t script_stack_ptr ; 
 int /*<<< orphan*/  script_start_ptr ; 
 int /*<<< orphan*/ * script_start_stack ; 

void FUNC0()
{
  script_stack[script_stack_ptr] = script_ptr;
  script_start_stack[script_stack_ptr] = script_start_ptr;
  script_stack[script_stack_ptr] += 1 + script_cmd_args_len;
  script_stack_ptr++;
}