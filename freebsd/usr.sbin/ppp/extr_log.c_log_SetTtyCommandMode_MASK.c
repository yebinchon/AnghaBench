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
struct datalink {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct prompt*,struct datalink*) ; 
 int /*<<< orphan*/  FUNC1 (struct prompt*) ; 
 struct prompt* promptlist ; 

void
FUNC2(struct datalink *dl)
{
  struct prompt *p;

  for (p = promptlist; p; p = p->next)
    if (FUNC0(p, dl))
      FUNC1(p);
}