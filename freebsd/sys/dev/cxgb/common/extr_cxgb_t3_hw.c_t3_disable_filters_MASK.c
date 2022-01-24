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
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_MC5_DB_CONFIG ; 
 int /*<<< orphan*/  A_TP_GLOBAL_CONFIG ; 
 int /*<<< orphan*/  A_TP_INGRESS_CONFIG ; 
 int /*<<< orphan*/  F_FILTEREN ; 
 int /*<<< orphan*/  F_LOOKUPEVERYPKT ; 
 int /*<<< orphan*/  M_FIVETUPLELOOKUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(adapter_t *adap)
{
	/* note that we don't want to revert to NIC-only mode */
	FUNC1(adap, A_MC5_DB_CONFIG, F_FILTEREN, 0);
	FUNC1(adap, A_TP_GLOBAL_CONFIG,
			 FUNC0(M_FIVETUPLELOOKUP), 0);
	FUNC2(adap, A_TP_INGRESS_CONFIG, F_LOOKUPEVERYPKT, 0);
}