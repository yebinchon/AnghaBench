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
typedef  int /*<<< orphan*/  uint16_t ;
struct mdchain {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MINLINE ; 
 int FUNC0 (struct mdchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC1(struct mdchain *mdp, uint16_t *x)
{
	return (FUNC0(mdp, (caddr_t)x, 2, MB_MINLINE));
}