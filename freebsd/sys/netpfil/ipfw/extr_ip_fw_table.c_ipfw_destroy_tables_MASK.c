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
struct ip_fw_chain {int /*<<< orphan*/  tablestate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  destroy_table_locked ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC11 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC12 (struct ip_fw_chain*,int) ; 
 int /*<<< orphan*/  opcodes ; 
 int /*<<< orphan*/  scodes ; 

void
FUNC13(struct ip_fw_chain *ch, int last)
{

	FUNC3(last, scodes);
	FUNC2(last, opcodes);

	/* Remove all tables from working set */
	FUNC4(ch);
	FUNC6(ch);
	FUNC10(FUNC0(ch), destroy_table_locked, ch);
	FUNC7(ch);
	FUNC5(ch);

	/* Free pointers itself */
	FUNC8(ch->tablestate, M_IPFW);

	FUNC12(ch, last);
	FUNC11(ch);

	FUNC9(FUNC0(ch));
	FUNC8(FUNC1(ch), M_IPFW);
}