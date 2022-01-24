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
struct TYPE_2__ {char* srcptr; } ;
struct iplist {char* src; TYPE_1__ cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  FUNC0 (struct iplist*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct iplist *list)
{
  char *ptr, *to, *end;

  ptr = list->cur.srcptr;
  if (ptr != NULL && (ptr = FUNC2(ptr, ',')) != NULL)
    ptr++;
  else
    ptr = list->src;

  while (*ptr != '\0' && !FUNC0(list, ptr)) {
    if ((end = FUNC2(ptr, ',')) == NULL)
      end = ptr + FUNC3(ptr);
    if (end == ptr)
      return 0;
    FUNC1(LogWARN, "%.*s: Invalid IP range (skipping)\n",
               (int)(end - ptr), ptr);
    to = ptr;
    do
      *to = *end++;
    while (*to++ != '\0');
    if (*ptr == '\0')
      ptr = list->src;
  }

  return 1;
}