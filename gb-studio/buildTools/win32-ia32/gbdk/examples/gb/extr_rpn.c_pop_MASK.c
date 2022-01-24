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
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t sp ; 
 int /*<<< orphan*/ * stack ; 

WORD FUNC1()
{
  if(sp > 0)
    return stack[--sp];
  else
    FUNC0("Stack empty");
  return 0;
}