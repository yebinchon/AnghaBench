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
typedef  int /*<<< orphan*/  u_char ;
struct fsm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE_TERMACK ; 
 int /*<<< orphan*/  MB_IPCPOUT ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct fsm *fp, u_char id)
{
  /* Send Term ACK please */
  FUNC0(fp, CODE_TERMACK, id, NULL, 0, MB_IPCPOUT);
}