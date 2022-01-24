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
typedef  int /*<<< orphan*/  u_int8_t ;
struct mss_info {int bd_flags; int /*<<< orphan*/  io_base; } ;

/* Variables and functions */
 int BD_F_MSS_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct mss_info *mss, int reg, u_int8_t data)
{
	if (mss->bd_flags & BD_F_MSS_OFFSET) reg -= 4;
	FUNC0(mss->io_base, reg, data);
}