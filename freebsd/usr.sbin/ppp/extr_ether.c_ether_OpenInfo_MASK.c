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
struct physical {int /*<<< orphan*/  handler; } ;
struct etherdevice {int connected; } ;

/* Variables and functions */
#define  CARRIER_OK 129 
#define  CARRIER_PENDING 128 
 struct etherdevice* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC1(struct physical *p)
{
  struct etherdevice *dev = FUNC0(p->handler);

  switch (dev->connected) {
    case CARRIER_PENDING:
      return "negotiating";
    case CARRIER_OK:
      return "established";
  }

  return "disconnected";
}