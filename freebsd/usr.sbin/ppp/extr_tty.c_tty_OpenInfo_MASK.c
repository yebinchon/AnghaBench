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
struct ttydevice {int dummy; } ;
struct physical {int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ttydevice*) ; 
 struct ttydevice* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static const char *
FUNC4(struct physical *p)
{
  struct ttydevice *dev = FUNC1(p->handler);
  static char buf[13];

  if (FUNC0(dev))
    FUNC3(buf, "with");
  else
    FUNC3(buf, "no");
  FUNC2(buf, " carrier");

  return buf;
}