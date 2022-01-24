#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sctp_nat_assoc {scalar_t__ l_port; int /*<<< orphan*/  TableRegister; int /*<<< orphan*/  g_port; int /*<<< orphan*/  g_vtag; TYPE_1__ l_addr; } ;
struct libalias {int packetAliasMode; int /*<<< orphan*/  sctpLinkCount; int /*<<< orphan*/  sctpNatTableSize; int /*<<< orphan*/ * sctpTableGlobal; } ;

/* Variables and functions */
 struct sctp_nat_assoc* FUNC0 (struct libalias*,struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sctp_nat_assoc*,int /*<<< orphan*/ ) ; 
 int PKT_ALIAS_LOG ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*,struct sctp_nat_assoc*) ; 
 int SN_ADD_CLASH ; 
 int SN_ADD_OK ; 
 int /*<<< orphan*/  SN_BOTH_TBL ; 
 int /*<<< orphan*/  SN_GLOBAL_TBL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SN_LOG_INFO ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  list_G ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_nat_assoc*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct libalias*,struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_nat_assoc*) ; 

__attribute__((used)) static int
FUNC11(struct libalias *la, struct sctp_nat_assoc *assoc)
{
	struct sctp_nat_assoc *found;

	FUNC1(la);
	found = FUNC0(la, assoc);
	if (found != NULL) {
		if ((found->TableRegister == SN_GLOBAL_TBL) &&			\
		    (found->l_addr.s_addr == assoc->l_addr.s_addr) && (found->l_port == assoc->l_port)) { /* resent message */
			FUNC3(la, found);
			FUNC9(la, found);
			FUNC7(found);
			FUNC10(found);
		} else
			return (SN_ADD_CLASH);
	}

	FUNC2(&la->sctpTableGlobal[FUNC5(assoc->g_vtag, assoc->g_port, la->sctpNatTableSize)],
	    assoc, list_G);
	assoc->TableRegister |= SN_GLOBAL_TBL;
	la->sctpLinkCount++; //increment link count

	if (assoc->TableRegister == SN_BOTH_TBL) {
		/* libalias log -- controlled by libalias */
		if (la->packetAliasMode & PKT_ALIAS_LOG)
			FUNC6(la);

		FUNC4(SN_LOG_INFO, FUNC8(assoc, "^"));
	}

	return (SN_ADD_OK);
}