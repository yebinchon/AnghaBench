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
typedef  unsigned short u_short ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */

unsigned short FUNC0 (unsigned short *ptr, int nbytes) {
  register long sum;
  u_short oddbyte;
  register u_short answer;

  sum = 0;
  while (nbytes > 1)
    {
      sum += *ptr++;
      nbytes -= 2;
    }

  if (nbytes == 1)
    {
      oddbyte = 0;
      *((u_char *) & oddbyte) = *(u_char *) ptr;
      sum += oddbyte;
    }

  sum = (sum >> 16) + (sum & 0xffff);
  sum += (sum >> 16);
  answer = ~sum;
  return (answer);
}