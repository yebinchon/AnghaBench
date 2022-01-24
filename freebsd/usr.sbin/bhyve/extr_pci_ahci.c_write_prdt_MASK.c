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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct ahci_prdt_entry {int dbc; int /*<<< orphan*/  dba; } ;
struct ahci_port {int /*<<< orphan*/  pr_sc; scalar_t__ cmd_lst; } ;
struct ahci_cmd_hdr {int prdtl; int prdbc; } ;

/* Variables and functions */
 int AHCI_CL_SIZE ; 
 int DBCMASK ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC4(struct ahci_port *p, int slot, uint8_t *cfis,
		void *buf, int size)
{
	struct ahci_cmd_hdr *hdr;
	struct ahci_prdt_entry *prdt;
	void *from;
	int i, len;

	hdr = (struct ahci_cmd_hdr *)(p->cmd_lst + slot * AHCI_CL_SIZE);
	len = size;
	from = buf;
	prdt = (struct ahci_prdt_entry *)(cfis + 0x80);
	for (i = 0; i < hdr->prdtl && len; i++) {
		uint8_t *ptr;
		uint32_t dbcsz;
		int sublen;

		dbcsz = (prdt->dbc & DBCMASK) + 1;
		ptr = FUNC3(FUNC1(p->pr_sc), prdt->dba, dbcsz);
		sublen = FUNC0(len, dbcsz);
		FUNC2(ptr, from, sublen);
		len -= sublen;
		from += sublen;
		prdt++;
	}
	hdr->prdbc = size - len;
}