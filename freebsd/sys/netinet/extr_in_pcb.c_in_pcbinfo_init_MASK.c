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
typedef  int /*<<< orphan*/  uma_init ;
typedef  int /*<<< orphan*/  u_int ;
struct inpcbinfo {int /*<<< orphan*/  ipi_zone; int /*<<< orphan*/  ipi_lbgrouphashmask; void* ipi_lbgrouphashbase; int /*<<< orphan*/  ipi_porthashmask; void* ipi_porthashbase; int /*<<< orphan*/  ipi_hashmask; void* ipi_hashbase; scalar_t__ ipi_count; struct inpcbhead* ipi_listhead; int /*<<< orphan*/  ipi_vnet; } ;
struct inpcbhead {int dummy; } ;
struct inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inpcbhead*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcbinfo*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcbinfo*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcbinfo*,char*) ; 
 scalar_t__ IPPORT_MAX ; 
 int /*<<< orphan*/  M_PCB ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  curvnet ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inpcbinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  inpcb_fini ; 
 int /*<<< orphan*/  maxsockets ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

void
FUNC10(struct inpcbinfo *pcbinfo, const char *name,
    struct inpcbhead *listhead, int hash_nelements, int porthash_nelements,
    char *inpcbzone_name, uma_init inpcbzone_init, u_int hashfields)
{

	porthash_nelements = FUNC5(porthash_nelements, IPPORT_MAX + 1);

	FUNC2(pcbinfo, name);
	FUNC1(pcbinfo, "pcbinfohash");	/* XXXRW: argument? */
	FUNC3(pcbinfo, "pcbinfolist");
#ifdef VIMAGE
	pcbinfo->ipi_vnet = curvnet;
#endif
	pcbinfo->ipi_listhead = listhead;
	FUNC0(pcbinfo->ipi_listhead);
	pcbinfo->ipi_count = 0;
	pcbinfo->ipi_hashbase = FUNC4(hash_nelements, M_PCB,
	    &pcbinfo->ipi_hashmask);
	pcbinfo->ipi_porthashbase = FUNC4(porthash_nelements, M_PCB,
	    &pcbinfo->ipi_porthashmask);
	pcbinfo->ipi_lbgrouphashbase = FUNC4(porthash_nelements, M_PCB,
	    &pcbinfo->ipi_lbgrouphashmask);
#ifdef PCBGROUP
	in_pcbgroup_init(pcbinfo, hashfields, hash_nelements);
#endif
	pcbinfo->ipi_zone = FUNC7(inpcbzone_name, sizeof(struct inpcb),
	    NULL, NULL, inpcbzone_init, inpcb_fini, UMA_ALIGN_PTR, 0);
	FUNC8(pcbinfo->ipi_zone, maxsockets);
	FUNC9(pcbinfo->ipi_zone,
	    "kern.ipc.maxsockets limit reached");
}