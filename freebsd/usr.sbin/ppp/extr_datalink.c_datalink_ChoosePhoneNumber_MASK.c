#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* alt; char* next; char* list; char* chosen; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; } ;
struct TYPE_5__ {TYPE_1__ phone; } ;
struct datalink {TYPE_3__ phone; TYPE_2__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogCHAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (char**,char*) ; 

const char *
FUNC3(struct datalink *dl)
{
  char *phone;

  if (dl->phone.alt == NULL) {
    if (dl->phone.next == NULL) {
      FUNC1(dl->phone.list, dl->cfg.phone.list, sizeof dl->phone.list - 1);
      dl->phone.list[sizeof dl->phone.list - 1] = '\0';
      if (*dl->phone.list == '\0')
        return "";
      dl->phone.next = dl->phone.list;
    }
    dl->phone.alt = FUNC2(&dl->phone.next, ":");
  }
  phone = FUNC2(&dl->phone.alt, "|");
  dl->phone.chosen = *phone ? phone : "[NONE]";
  if (*phone)
    FUNC0(LogCHAT, "Phone: %s\n", phone);
  return phone;
}