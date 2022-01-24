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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,long) ; 
 char* FUNC1 (char*,char const*,char*) ; 

__attribute__((used)) static char *
FUNC2(char *tgt, const char *oldstr, long l)
{
  char buf[23];

  FUNC0(buf, sizeof buf, "%ld", l);

  return FUNC1(tgt, oldstr, buf);
}