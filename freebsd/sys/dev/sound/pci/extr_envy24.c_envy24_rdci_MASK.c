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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENVY24_CCS_DATA ; 
 int /*<<< orphan*/  ENVY24_CCS_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u_int32_t
FUNC2(struct sc_info *sc, int regno)
{
	FUNC1(sc, ENVY24_CCS_INDEX, regno, 1);
	return FUNC0(sc, ENVY24_CCS_DATA, 1);
}