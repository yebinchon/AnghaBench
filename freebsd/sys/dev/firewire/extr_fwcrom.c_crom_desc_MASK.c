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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct csrreg {int key; int val; } ;
struct csrdirectory {int crc_len; int crc; int /*<<< orphan*/ * entry; } ;
struct crom_context {int dummy; } ;

/* Variables and functions */
#define  CSRTYPE_C 131 
#define  CSRTYPE_D 130 
#define  CSRTYPE_I 129 
#define  CSRTYPE_L 128 
 int CSRTYPE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 struct csrreg* FUNC2 (struct crom_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct crom_context*,char*,int) ; 
 int FUNC4 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

char *
FUNC6(struct crom_context *cc, char *buf, int len)
{
	struct csrreg *reg;
	struct csrdirectory *dir;
	char *desc;
	uint16_t crc;

	reg = FUNC2(cc);
	switch (reg->key & CSRTYPE_MASK) {
	case CSRTYPE_I:
#if 0
		len -= snprintf(buf, len, "%d", reg->val);
		buf += strlen(buf);
#else
		*buf = '\0';
#endif
		break;
	case CSRTYPE_C:
		len -= FUNC4(buf, len, "offset=0x%04x(%d)",
		    reg->val, reg->val);
		buf += FUNC5(buf);
		break;
	case CSRTYPE_L:
		/* XXX fall through */
	case CSRTYPE_D:
		dir = (struct csrdirectory *)(reg + reg->val);
		crc = FUNC0((uint32_t *)&dir->entry[0], dir->crc_len);
		len -= FUNC4(buf, len, "len=%d crc=0x%04x(%s) ",
		    dir->crc_len, dir->crc,
		    (crc == dir->crc) ? "OK" : "NG");
		buf += FUNC5(buf);
	}
	switch (reg->key) {
	case 0x03:
		desc = "module_vendor_ID";
		break;
	case 0x04:
		desc = "hardware_version";
		break;
	case 0x0c:
		desc = "node_capabilities";
		break;
	case 0x12:
		desc = "unit_spec_ID";
		break;
	case 0x13:
		desc = "unit_sw_version";
		FUNC1(0, reg->val, buf, len);
		break;
	case 0x14:
		desc = "logical_unit_number";
		break;
	case 0x17:
		desc = "model_ID";
		break;
	case 0x38:
		desc = "command_set_spec_ID";
		break;
	case 0x39:
		desc = "command_set";
		break;
	case 0x3a:
		desc = "unit_characteristics";
		break;
	case 0x3b:
		desc = "command_set_revision";
		break;
	case 0x3c:
		desc = "firmware_revision";
		break;
	case 0x3d:
		desc = "reconnect_timeout";
		break;
	case 0x54:
		desc = "management_agent";
		break;
	case 0x81:
		desc = "text_leaf";
		FUNC3(cc, buf + FUNC5(buf), len);
		break;
	case 0xd1:
		desc = "unit_directory";
		break;
	case 0xd4:
		desc = "logical_unit_directory";
		break;
	default:
		desc = "unknown";
	}
	return desc;
}