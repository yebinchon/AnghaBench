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
struct lcp {int dummy; } ;
struct TYPE_2__ {struct lcp* owner; } ;
struct hdlc {TYPE_1__ lqm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hdlc*,char,int) ; 

void
FUNC1(struct hdlc *hdlc, struct lcp *lcp)
{
  FUNC0(hdlc, '\0', sizeof(struct hdlc));
  hdlc->lqm.owner = lcp;
}