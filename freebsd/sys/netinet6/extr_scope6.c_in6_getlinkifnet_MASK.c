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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_short ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 struct ifnet* FUNC0 (int /*<<< orphan*/ ) ; 

struct ifnet*
FUNC1(uint32_t zoneid)
{

	return (FUNC0((u_short)zoneid));
}