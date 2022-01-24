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
struct TYPE_2__ {char* srcptr; scalar_t__ nItems; } ;
struct iplist {char* src; TYPE_1__ cur; int /*<<< orphan*/  nItems; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iplist*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

int
FUNC2(struct iplist *list, const char *src)
{
  FUNC1(list->src, src, sizeof list->src - 1);
  list->src[sizeof list->src - 1] = '\0';
  list->cur.srcptr = list->src;
  do {
    if (FUNC0(list))
      list->nItems += list->cur.nItems;
    else
      return 0;
  } while (list->cur.srcptr != list->src);
  return 1;
}