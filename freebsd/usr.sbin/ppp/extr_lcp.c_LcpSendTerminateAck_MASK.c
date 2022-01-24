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
typedef  int /*<<< orphan*/  u_char ;
struct physical {TYPE_1__* dl; } ;
struct fsm {int /*<<< orphan*/  link; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE_TERMACK ; 
 scalar_t__ DATALINK_CBCP ; 
 int /*<<< orphan*/  MB_LCPOUT ; 
 int /*<<< orphan*/  FUNC0 (struct physical*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct physical* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct fsm *fp, u_char id)
{
  /* Send Term ACK please */
  struct physical *p = FUNC2(fp->link);

  if (p && p->dl->state == DATALINK_CBCP)
    FUNC0(p);

  FUNC1(fp, CODE_TERMACK, id, NULL, 0, MB_LCPOUT);
}