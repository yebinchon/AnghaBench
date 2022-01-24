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
struct prompt {struct prompt* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct prompt*) ; 
 struct prompt* promptlist ; 

void
FUNC1()
{
  struct prompt *p;

  for (p = promptlist; p; p = p->next)
    FUNC0(p);
}