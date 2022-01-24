#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ _TCBVAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*) ; 

void
FUNC1( _TCBVAR *base_tvp, unsigned char *buf)
{   /* parse the FCB */
  _TCBVAR *tvp=base_tvp;

  while (tvp->name!=NULL) {
    FUNC0(tvp,buf);
    tvp+=1;
  }
}