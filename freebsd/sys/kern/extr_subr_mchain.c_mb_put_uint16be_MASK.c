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
typedef  int /*<<< orphan*/  x ;
typedef  int /*<<< orphan*/  uint16_t ;
struct mbchain {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC2(struct mbchain *mbp, uint16_t x)
{
	x = FUNC0(x);
	return (FUNC1(mbp, (caddr_t)&x, sizeof(x), MB_MSYSTEM));
}