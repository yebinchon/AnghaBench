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
typedef  int u_int32_t ;
typedef  scalar_t__ u_int16_t ;
struct csrreg {int val; int key; } ;
struct csrhdr {int info_len; int crc_len; int crc; } ;
struct csrdirectory {int crc_len; int crc; int /*<<< orphan*/ * entry; } ;
struct crom_context {int depth; TYPE_1__* stack; } ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_2__ {struct csrdirectory* dir; } ;

/* Variables and functions */
 int CSRKEY_MASK ; 
 int CSRTYPE_MASK ; 
 scalar_t__ FUNC0 (int*,int) ; 
 char* FUNC1 (struct crom_context*,char*,int) ; 
 struct csrreg* FUNC2 (struct crom_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct crom_context*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct crom_context*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(u_int32_t *crom_buf)
{
	int i;
	struct crom_context cc;
	char *desc, info[256];
	static const char *key_types = "ICLD";
	struct csrreg *reg;
	struct csrdirectory *dir;
	struct csrhdr *hdr;
	u_int16_t crc;

	FUNC6("first quad: 0x%08x ", *crom_buf);
	if (crom_buf[0] == 0) {
		FUNC6("(Invalid Configuration ROM)\n");
		return;
	}
	hdr = (struct csrhdr *)crom_buf;
	if (hdr->info_len == 1) {
		/* minimum ROM */
		reg = (struct csrreg *)hdr;
		FUNC6("verndor ID: 0x%06x\n",  reg->val);
		return;
	}
	FUNC6("info_len=%d crc_len=%d crc=0x%04x",
		hdr->info_len, hdr->crc_len, hdr->crc);
	crc = FUNC0(crom_buf+1, hdr->crc_len);
	if (crc == hdr->crc)
		FUNC6("(OK)\n");
	else
		FUNC6("(NG)\n");
	FUNC5(crom_buf+1);

	FUNC3(&cc, crom_buf);
	dir = cc.stack[0].dir;
	if (!dir) {
		FUNC6("no root directory - giving up\n");
		return;
	}
	FUNC6("root_directory: len=0x%04x(%d) crc=0x%04x",
			dir->crc_len, dir->crc_len, dir->crc);
	crc = FUNC0((u_int32_t *)&dir->entry[0], dir->crc_len);
	if (crc == dir->crc)
		FUNC6("(OK)\n");
	else
		FUNC6("(NG)\n");
	if (dir->crc_len < 1)
		return;
	while (cc.depth >= 0) {
		desc = FUNC1(&cc, info, sizeof(info));
		reg = FUNC2(&cc);
		for (i = 0; i < cc.depth; i++)
			FUNC6("\t");
		FUNC6("%02x(%c:%02x) %06x %s: %s\n",
			reg->key,
			key_types[(reg->key & CSRTYPE_MASK)>>6],
			reg->key & CSRKEY_MASK, reg->val,
			desc, info);
		FUNC4(&cc);
	}
}