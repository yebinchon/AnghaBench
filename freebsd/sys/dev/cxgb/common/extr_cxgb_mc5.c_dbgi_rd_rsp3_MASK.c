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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_MC5_DB_DBGI_RSP_DATA0 ; 
 int /*<<< orphan*/  A_MC5_DB_DBGI_RSP_DATA1 ; 
 int /*<<< orphan*/  A_MC5_DB_DBGI_RSP_DATA2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(adapter_t *adapter, u32 *v1, u32 *v2, u32 *v3)
{
	*v1 = FUNC0(adapter, A_MC5_DB_DBGI_RSP_DATA0);
	*v2 = FUNC0(adapter, A_MC5_DB_DBGI_RSP_DATA1);
	*v3 = FUNC0(adapter, A_MC5_DB_DBGI_RSP_DATA2);
}