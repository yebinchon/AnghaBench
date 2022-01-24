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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  EFX_SRAM_CLEAR 130 
#define  EFX_SRAM_ILLEGAL_CLEAR 129 
#define  EFX_SRAM_UPDATE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sram_clear ; 
 int /*<<< orphan*/  sram_illegal_clear ; 
 int /*<<< orphan*/  sram_update ; 

__attribute__((used)) static boolean_t
FUNC2(void *arg, uint32_t code)
{
	(void)arg;
	(void)code;

	switch (code) {
	case EFX_SRAM_UPDATE:
		FUNC0(sram_update);
		break;

	case EFX_SRAM_CLEAR:
		FUNC0(sram_clear);
		break;

	case EFX_SRAM_ILLEGAL_CLEAR:
		FUNC0(sram_illegal_clear);
		break;

	default:
		FUNC1(B_FALSE, ("Impossible SRAM event"));
		break;
	}

	return (B_FALSE);
}