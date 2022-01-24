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
struct datalink {struct datalink* next; } ;
struct bundle {struct datalink* links; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct datalink*,int) ; 

void
FUNC1(struct bundle *bundle, int how)
{
  struct datalink *dl;

  for (dl = bundle->links; dl; dl = dl->next)
    FUNC0(dl, how);
}