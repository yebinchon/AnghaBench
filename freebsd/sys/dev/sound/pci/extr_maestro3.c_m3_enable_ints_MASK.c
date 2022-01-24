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
typedef  int u_int8_t ;
struct sc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSP_CONTROL_C ; 
 int ASSP_HOST_INT_ENABLE ; 
 int ASSP_INT_ENABLE ; 
 int /*<<< orphan*/  HOST_INT_CTRL ; 
 int HV_INT_ENABLE ; 
 int FUNC0 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct sc_info *sc)
{
	u_int8_t data;

	FUNC2(sc, HOST_INT_CTRL, ASSP_INT_ENABLE | HV_INT_ENABLE);
	data = FUNC0(sc, ASSP_CONTROL_C);
	FUNC1(sc, ASSP_CONTROL_C, data | ASSP_HOST_INT_ENABLE);
}