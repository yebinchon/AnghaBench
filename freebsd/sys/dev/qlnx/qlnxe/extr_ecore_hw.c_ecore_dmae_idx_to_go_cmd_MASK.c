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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int DMAE_REG_GO_C0 ; 
 int DMAE_REG_GO_C31 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static u32 FUNC1(u8 idx)
{
	FUNC0((DMAE_REG_GO_C31 - DMAE_REG_GO_C0) !=
			  31 * 4);

	/* All the DMAE 'go' registers form an array in internal memory */
	return DMAE_REG_GO_C0 + (idx << 2);
}