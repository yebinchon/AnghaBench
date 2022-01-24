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
struct datalink {int dummy; } ;
struct bundle {int dummy; } ;

/* Variables and functions */
 struct datalink* FUNC0 (struct bundle*,struct datalink*) ; 
 int /*<<< orphan*/  FUNC1 (struct datalink*) ; 

void
FUNC2(struct bundle *bundle, struct datalink *dl)
{
  dl = FUNC0(bundle, dl);
  if (dl)
    FUNC1(dl);
}