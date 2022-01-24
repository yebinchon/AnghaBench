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
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_ALGNERRC ; 
 int /*<<< orphan*/  E1000_CEXTERR ; 
 int /*<<< orphan*/  E1000_IAC ; 
 int /*<<< orphan*/  E1000_ICRXATC ; 
 int /*<<< orphan*/  E1000_ICRXDMTC ; 
 int /*<<< orphan*/  E1000_ICRXOC ; 
 int /*<<< orphan*/  E1000_ICRXPTC ; 
 int /*<<< orphan*/  E1000_ICTXATC ; 
 int /*<<< orphan*/  E1000_ICTXPTC ; 
 int /*<<< orphan*/  E1000_ICTXQEC ; 
 int /*<<< orphan*/  E1000_ICTXQMTC ; 
 int /*<<< orphan*/  E1000_MGTPDC ; 
 int /*<<< orphan*/  E1000_MGTPRC ; 
 int /*<<< orphan*/  E1000_MGTPTC ; 
 int /*<<< orphan*/  E1000_PRC1023 ; 
 int /*<<< orphan*/  E1000_PRC127 ; 
 int /*<<< orphan*/  E1000_PRC1522 ; 
 int /*<<< orphan*/  E1000_PRC255 ; 
 int /*<<< orphan*/  E1000_PRC511 ; 
 int /*<<< orphan*/  E1000_PRC64 ; 
 int /*<<< orphan*/  E1000_PTC1023 ; 
 int /*<<< orphan*/  E1000_PTC127 ; 
 int /*<<< orphan*/  E1000_PTC1522 ; 
 int /*<<< orphan*/  E1000_PTC255 ; 
 int /*<<< orphan*/  E1000_PTC511 ; 
 int /*<<< orphan*/  E1000_PTC64 ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_RXERRC ; 
 int /*<<< orphan*/  E1000_TNCRS ; 
 int /*<<< orphan*/  E1000_TSCTC ; 
 int /*<<< orphan*/  E1000_TSCTFC ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 

__attribute__((used)) static void FUNC3(struct e1000_hw *hw)
{
	FUNC0("e1000_clear_hw_cntrs_80003es2lan");

	FUNC2(hw);

	FUNC1(hw, E1000_PRC64);
	FUNC1(hw, E1000_PRC127);
	FUNC1(hw, E1000_PRC255);
	FUNC1(hw, E1000_PRC511);
	FUNC1(hw, E1000_PRC1023);
	FUNC1(hw, E1000_PRC1522);
	FUNC1(hw, E1000_PTC64);
	FUNC1(hw, E1000_PTC127);
	FUNC1(hw, E1000_PTC255);
	FUNC1(hw, E1000_PTC511);
	FUNC1(hw, E1000_PTC1023);
	FUNC1(hw, E1000_PTC1522);

	FUNC1(hw, E1000_ALGNERRC);
	FUNC1(hw, E1000_RXERRC);
	FUNC1(hw, E1000_TNCRS);
	FUNC1(hw, E1000_CEXTERR);
	FUNC1(hw, E1000_TSCTC);
	FUNC1(hw, E1000_TSCTFC);

	FUNC1(hw, E1000_MGTPRC);
	FUNC1(hw, E1000_MGTPDC);
	FUNC1(hw, E1000_MGTPTC);

	FUNC1(hw, E1000_IAC);
	FUNC1(hw, E1000_ICRXOC);

	FUNC1(hw, E1000_ICRXPTC);
	FUNC1(hw, E1000_ICRXATC);
	FUNC1(hw, E1000_ICTXPTC);
	FUNC1(hw, E1000_ICTXATC);
	FUNC1(hw, E1000_ICTXQEC);
	FUNC1(hw, E1000_ICTXQMTC);
	FUNC1(hw, E1000_ICRXDMTC);
}