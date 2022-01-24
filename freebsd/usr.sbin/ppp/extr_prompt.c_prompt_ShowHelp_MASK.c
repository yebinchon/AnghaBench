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
struct prompt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct prompt*,char*) ; 

__attribute__((used)) static void
FUNC1(struct prompt *p)
{
  FUNC0(p, "The following commands are available:\n");
  FUNC0(p, " ~p\tEnter Packet mode\n");
  FUNC0(p, " ~t\tShow timers\n");
  FUNC0(p, " ~m\tShow memory map\n");
  FUNC0(p, " ~.\tTerminate program\n");
  FUNC0(p, " ~?\tThis help\n");
}