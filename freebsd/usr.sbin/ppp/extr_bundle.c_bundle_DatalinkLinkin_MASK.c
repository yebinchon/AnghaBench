#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct datalink {struct datalink* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  mp; } ;
struct bundle {TYPE_1__ ncp; struct datalink* links; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bundle*,struct datalink*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct bundle *bundle, struct datalink *dl)
{
  struct datalink **dlp = &bundle->links;

  while (*dlp)
    dlp = &(*dlp)->next;

  *dlp = dl;
  dl->next = NULL;

  FUNC0(bundle, dl);
  FUNC1(&bundle->ncp.mp);
}