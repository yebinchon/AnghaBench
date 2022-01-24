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
struct physical {int /*<<< orphan*/  fd; TYPE_1__* dl; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
#define  DATALINK_DIAL 129 
#define  DATALINK_LOGIN 128 
 int NG_HOOKSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct physical*,void*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC2(struct physical *p, void *v, size_t n)
{
  char hook[NG_HOOKSIZ];

  switch (p->dl->state) {
    case DATALINK_DIAL:
    case DATALINK_LOGIN:
      return FUNC1(p, v, n);
  }

  return FUNC0(p->fd, v, n, hook);
}