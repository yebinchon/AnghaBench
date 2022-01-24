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
typedef  int /*<<< orphan*/  result_buf ;
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
typedef  int /*<<< orphan*/  ocs_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_MODE_RD ; 
 int /*<<< orphan*/  SLI4_ASIC_ID_REG ; 
 int /*<<< orphan*/  SLI4_INTF_REG ; 
 int /*<<< orphan*/  SLI4_PCI_CLASS_REVISION ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
	uint32_t family;
	uint32_t asic_id;
	uint32_t asic_gen_num;
	uint32_t asic_rev_num;
	uint32_t rev_id;
	char result_buf[80];
	char tmp_buf[80];

	family = (FUNC0(ocs, SLI4_INTF_REG) & 0x00000f00) >> 8;
	asic_id = FUNC0(ocs, SLI4_ASIC_ID_REG);
	asic_rev_num = asic_id & 0xff;
	asic_gen_num = (asic_id & 0xff00) >> 8;

	rev_id = FUNC0(ocs, SLI4_PCI_CLASS_REVISION) & 0xff;

	switch(family) {
	case 0x00:
		/* BE2 */
		FUNC4(result_buf,  "BE2 A", sizeof(result_buf));
		FUNC2(tmp_buf, 2, "%d", rev_id);
		FUNC5(result_buf, tmp_buf);
		break;
	case 0x01:
		/* BE3 */
		FUNC4(result_buf, "BE3", sizeof(result_buf));
		if (rev_id >= 0x10) {
			FUNC5(result_buf, "-R");
		}
		FUNC2(tmp_buf, 3, " %c", ((rev_id & 0xf0) >> 4) + 'A');
		FUNC5(result_buf, tmp_buf);
		FUNC2(tmp_buf, 2, "%d", rev_id & 0x0f);
		FUNC5(result_buf, tmp_buf);
		break;
	case 0x02:
		/* Skyhawk A0 */
		FUNC4(result_buf, "Skyhawk A0", sizeof(result_buf));
		break;
	case 0x0a:
		/* Lancer A0 */
		FUNC4(result_buf, "Lancer A", sizeof(result_buf));
		FUNC2(tmp_buf, 2, "%d", rev_id & 0x0f);
		FUNC5(result_buf, tmp_buf);
		break;
	case 0x0b:
		/* Lancer B0 or D0 */
		FUNC4(result_buf, "Lancer", sizeof(result_buf));
		FUNC2(tmp_buf, 3, " %c", ((rev_id & 0xf0) >> 4) + 'A');
		FUNC5(result_buf, tmp_buf);
		FUNC2(tmp_buf, 2, "%d", rev_id & 0x0f);
		FUNC5(result_buf, tmp_buf);
		break;
	case 0x0c:
		FUNC4(result_buf, "Lancer G6", sizeof(result_buf));
		break;
	case 0x0f:
		/* Refer to ASIC_ID */
		switch(asic_gen_num) {
		case 0x00:
			FUNC4(result_buf, "BE2", sizeof(result_buf));
			break;
		case 0x03:
			FUNC4(result_buf, "BE3-R", sizeof(result_buf));
			break;
		case 0x04:
			FUNC4(result_buf, "Skyhawk-R", sizeof(result_buf));
			break;
		case 0x05:
			FUNC4(result_buf, "Corsair", sizeof(result_buf));
			break;
		case 0x0b:
			FUNC4(result_buf, "Lancer", sizeof(result_buf));
			break;
		case 0x0c:
			FUNC4(result_buf, "LancerG6", sizeof(result_buf));
			break;
		default:
			FUNC4(result_buf, "Unknown", sizeof(result_buf));
		}
		if (FUNC3(result_buf, "Unknown") != 0) {
			FUNC2(tmp_buf, 3, " %c", ((asic_rev_num & 0xf0) >> 4) + 'A');
			FUNC5(result_buf, tmp_buf);
			FUNC2(tmp_buf, 2, "%d", asic_rev_num & 0x0f);
			FUNC5(result_buf, tmp_buf);
		}
		break;
	default:
		FUNC4(result_buf, "Unknown", sizeof(result_buf));
	}

	FUNC1(textbuf, MGMT_MODE_RD, "chip_type", result_buf);

}