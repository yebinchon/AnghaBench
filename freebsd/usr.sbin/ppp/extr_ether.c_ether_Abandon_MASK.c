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
struct physical {int fd; } ;
struct etherdevice {int cs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct etherdevice*) ; 

__attribute__((used)) static struct device *
FUNC2(struct etherdevice *dev, struct physical *p)
{
  /* Abandon our node construction */
  FUNC0(dev->cs);
  FUNC0(p->fd);
  p->fd = -2;	/* Nobody else need try.. */
  FUNC1(dev);

  return NULL;
}