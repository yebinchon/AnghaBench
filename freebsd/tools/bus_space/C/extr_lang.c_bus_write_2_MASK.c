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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,long,int /*<<< orphan*/ *,int) ; 
 int errno ; 

int
FUNC1(int rid, long ofs, uint16_t val)
{

	return ((!FUNC0(rid, ofs, &val, sizeof(val))) ? errno : 0);
}