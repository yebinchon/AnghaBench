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
struct sctp_nat_assoc {scalar_t__ g_port; int /*<<< orphan*/  TableRegister; int /*<<< orphan*/  l_port; int /*<<< orphan*/  l_vtag; int /*<<< orphan*/  l_addr; } ;
struct libalias {int packetAliasMode; int /*<<< orphan*/  sctpLinkCount; int /*<<< orphan*/  sctpNatTableSize; int /*<<< orphan*/ * sctpTableLocal; } ;
struct in_addr {int dummy; } ;

/* Variables and functions */
 struct sctp_nat_assoc* FUNC0 (struct libalias*,int /*<<< orphan*/ ,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sctp_nat_assoc*,int /*<<< orphan*/ ) ; 
 int PKT_ALIAS_LOG ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*,struct sctp_nat_assoc*) ; 
 int SN_ADD_CLASH ; 
 int SN_ADD_OK ; 
 int /*<<< orphan*/  SN_BOTH_TBL ; 
 int /*<<< orphan*/  SN_LOCAL_TBL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SN_LOG_INFO ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  list_L ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_nat_assoc*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct libalias*,struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_nat_assoc*) ; 

__attribute__((used)) static int
FUNC11(struct libalias *la, struct sctp_nat_assoc *assoc, struct in_addr g_addr)
{
	struct sctp_nat_assoc *found;

	FUNC1(la);
	found = FUNC0(la, assoc->l_addr, g_addr, assoc->l_vtag, assoc->l_port, assoc->g_port);
	/*
	 * Note that if a different global address initiated this Init,
	 * ie it wasn't resent as presumed:
	 *  - the local receiver if receiving it for the first time will establish
	 *    an association with the new global host
	 *  - if receiving an init from a different global address after sending a
	 *    lost initack it will send an initack to the new global host, the first
	 *    association attempt will then be blocked if retried.
	 */
	if (found != NULL) {
		if ((found->TableRegister == SN_LOCAL_TBL) && (found->g_port == assoc->g_port)) { /* resent message */
			FUNC3(la, found);
			FUNC9(la, found);
			FUNC7(found);
			FUNC10(found);
		} else
			return (SN_ADD_CLASH);
	}

	FUNC2(&la->sctpTableLocal[FUNC5(assoc->l_vtag, assoc->l_port, la->sctpNatTableSize)],
	    assoc, list_L);
	assoc->TableRegister |= SN_LOCAL_TBL;
	la->sctpLinkCount++; //increment link count

	if (assoc->TableRegister == SN_BOTH_TBL) {
		/* libalias log -- controlled by libalias */
		if (la->packetAliasMode & PKT_ALIAS_LOG)
			FUNC6(la);

		FUNC4(SN_LOG_INFO, FUNC8(assoc, "^"));
	}

	return (SN_ADD_OK);
}