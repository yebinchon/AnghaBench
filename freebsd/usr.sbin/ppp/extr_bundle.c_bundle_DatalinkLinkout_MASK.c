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
 int /*<<< orphan*/  FUNC0 (struct bundle*) ; 

__attribute__((used)) static struct datalink *
FUNC1(struct bundle *bundle, struct datalink *dl)
{
  struct datalink **dlp;

  for (dlp = &bundle->links; *dlp; dlp = &(*dlp)->next)
    if (*dlp == dl) {
      *dlp = dl->next;
      dl->next = NULL;
      FUNC0(bundle);
      return dl;
    }

  return NULL;
}