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
typedef  int u_char ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static int
FUNC1(char *myans, int mylen, char *hisans, int hislen
#ifndef NODES
         , u_char type, int lm
#endif
        )
{
  int off;

  if (mylen != hislen)
    return 0;

  off = 0;

#ifndef NODES
  if (type == 0x80) {
    off = lm ? 0 : 24;
    mylen = 24;
  }
#endif

  for (; mylen; off++, mylen--)
    if (FUNC0(myans[off]) != FUNC0(hisans[off]))
      return 0;

  return 1;
}