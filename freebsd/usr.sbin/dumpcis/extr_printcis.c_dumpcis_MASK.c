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
typedef  int u_char ;
struct tuple_list {struct tuple* tuples; struct tuple_list* next; } ;
struct tuple {int code; int length; int* data; struct tuple* next; } ;

/* Variables and functions */
#define  CIS_ALTSTR 151 
#define  CIS_BAR 150 
#define  CIS_CHECKSUM 149 
#define  CIS_CONFIG 148 
#define  CIS_CONFIG_CB 147 
#define  CIS_CONF_MAP 146 
#define  CIS_CONF_MAP_CB 145 
#define  CIS_DEVICEGEO 144 
#define  CIS_DEVICEGEO_A 143 
#define  CIS_DEVICE_OA 142 
#define  CIS_DEVICE_OC 141 
#define  CIS_FUNC_EXT 140 
#define  CIS_FUNC_ID 139 
#define  CIS_INFO_V1 138 
#define  CIS_JEDEC_A 137 
#define  CIS_JEDEC_C 136 
#define  CIS_LONGLINK_A 135 
#define  CIS_LONGLINK_C 134 
#define  CIS_LONGLINK_MFC 133 
#define  CIS_MANUF_ID 132 
#define  CIS_MEM_ATTR 131 
#define  CIS_MEM_COMMON 130 
#define  CIS_ORG 129 
#define  CIS_VERS_2 128 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tuple*) ; 
 int /*<<< orphan*/  FUNC2 (struct tuple*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int FUNC15 (int*) ; 
 int FUNC16 (int*) ; 
 char* FUNC17 (int) ; 

void
FUNC18(struct tuple_list *tlist)
{
	struct tuple *tp;
	struct tuple_list *tl;
	int     count = 0, sz, ad, i;
	u_char *p;
	int func = 0;

	for (tl = tlist; tl; tl = tl->next)
		for (tp = tl->tuples; tp; tp = tp->next) {
			FUNC14("Tuple #%d, code = 0x%x (%s), length = %d\n",
			    ++count, tp->code, FUNC17(tp->code), tp->length);
			p = tp->data;
			sz = tp->length;
			ad = 0;
			while (sz > 0) {
				FUNC14("    %03x: ", ad);
				for (i = 0; i < ((sz < 16) ? sz : 16); i++)
					FUNC14(" %02x", p[i]);
				FUNC14("\n");
				sz -= 16;
				p += 16;
				ad += 16;
			}
			switch (tp->code) {
			default:
				break;
			case CIS_MEM_COMMON:	/* 0x01 */
				FUNC3(tp->data, tp->length, "Common");
				break;
			case CIS_CONF_MAP_CB:	/* 0x04 */
				FUNC2(tp);
				break;
			case CIS_CONFIG_CB:	/* 0x05 */
				FUNC1(tp);
				break;
			case CIS_LONGLINK_MFC:	/* 0x06 */
				FUNC9(tp->data, tp->length);
				break;
			case CIS_BAR:		/* 0x07 */
				FUNC0(tp->data, tp->length);
				break;
			case CIS_CHECKSUM:	/* 0x10 */
				FUNC14("\tChecksum from offset %d, length %d, value is 0x%x\n",
				       FUNC15(tp->data),
				       FUNC15(tp->data + 2),
				       tp->data[4]);
				break;
			case CIS_LONGLINK_A:	/* 0x11 */
				FUNC14("\tLong link to attribute memory, address 0x%x\n",
				       FUNC16(tp->data));
				break;
			case CIS_LONGLINK_C:	/* 0x12 */
				FUNC14("\tLong link to common memory, address 0x%x\n",
				       FUNC16(tp->data));
				break;	
			case CIS_INFO_V1:	/* 0x15 */
				FUNC7(tp->data, tp->length);
				break;
			case CIS_ALTSTR:	/* 0x16 */
				break;
			case CIS_MEM_ATTR:	/* 0x17 */
				FUNC3(tp->data, tp->length, "Attribute");
				break;
			case CIS_JEDEC_C:	/* 0x18 */
			case CIS_JEDEC_A:	/* 0x19 */
				break;
			case CIS_CONF_MAP:	/* 0x1A */
				FUNC2(tp);
				break;
			case CIS_CONFIG:	/* 0x1B */
				FUNC1(tp);
				break;
			case CIS_DEVICE_OC:	/* 0x1C */
			case CIS_DEVICE_OA:	/* 0x1D */
				FUNC12(tp->data, tp->length);
				break;
			case CIS_DEVICEGEO:	/* 0x1E */
			case CIS_DEVICEGEO_A:	/* 0x1F */
				FUNC4(tp->data, tp->length);
				break;
			case CIS_MANUF_ID:	/* 0x20 */
				FUNC14("\tPCMCIA ID = 0x%x, OEM ID = 0x%x\n",
				       FUNC15(tp->data),
				       FUNC15(tp->data + 2));
				break;
			case CIS_FUNC_ID:	/* 0x21 */
				func = tp->data[0];
				FUNC6(tp->data);
				break;
			case CIS_FUNC_EXT:	/* 0x22 */
				switch (func) {
				case 2:
					FUNC13(tp->data, tp->length);
					break;
				case 4:
					FUNC5(tp->data, tp->length);
					break;
				case 6:
					FUNC10(tp->data, tp->length);
					break;
				}
				break;
			case CIS_VERS_2:	/* 0x40 */
				FUNC8(tp->data, tp->length);
				break;
			case CIS_ORG:		/* 0x46 */
				FUNC11(tp->data, tp->length);
				break;
			}
		}
}