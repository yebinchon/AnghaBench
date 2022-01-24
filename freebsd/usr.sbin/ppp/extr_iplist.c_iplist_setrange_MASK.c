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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_2__ {void* lstart; int nItems; char* srcptr; scalar_t__ srcitem; struct in_addr ip; } ;
struct iplist {TYPE_1__ cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct in_addr*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(struct iplist *list, char *range)
{
  char *ptr, *to;

  if ((ptr = FUNC4(range, ",-")) == NULL) {
    if (!FUNC1(range, &list->cur.ip))
      return 0;
    list->cur.lstart = FUNC2(list->cur.ip.s_addr);
    list->cur.nItems = 1;
  } else {
    if (!FUNC0(range, ptr, &list->cur.ip))
      return 0;
    if (*ptr == ',') {
      list->cur.lstart = FUNC2(list->cur.ip.s_addr);
      list->cur.nItems = 1;
    } else {
      struct in_addr endip;

      to = ptr+1;
      if ((ptr = FUNC4(to, ",-")) == NULL)
        ptr = to + FUNC3(to);
      if (*to == '-')
        return 0;
      if (!FUNC0(to, ptr, &endip))
        return 0;
      list->cur.lstart = FUNC2(list->cur.ip.s_addr);
      list->cur.nItems = FUNC2(endip.s_addr) - list->cur.lstart + 1;
      if (list->cur.nItems < 1)
        return 0;
    }
  }
  list->cur.srcitem = 0;
  list->cur.srcptr = range;
  return 1;
}