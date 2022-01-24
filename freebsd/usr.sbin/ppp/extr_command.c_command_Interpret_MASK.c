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
 int /*<<< orphan*/  MAXARGS ; 
 int FUNC0 (char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_REDUCE ; 
 int FUNC1 (char*,char*) ; 

int
FUNC2(char *buff, int nb, char *argv[MAXARGS])
{
  char *cp;

  if (nb > 0) {
    cp = buff + FUNC1(buff, "\r\n");
    if (cp)
      *cp = '\0';
    return FUNC0(buff, argv, MAXARGS, PARSE_REDUCE);
  }
  return 0;
}