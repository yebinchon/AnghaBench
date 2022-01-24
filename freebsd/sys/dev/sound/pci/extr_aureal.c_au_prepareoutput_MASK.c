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
typedef  int u_int32_t ;
struct au_info {int dummy; } ;
struct au_chinfo {int /*<<< orphan*/  buffer; struct au_info* parent; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct au_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct au_info*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct au_chinfo *ch, u_int32_t format)
{
	struct au_info *au = ch->parent;
	int i, stereo = (FUNC0(format) > 1)? 1 : 0;
	u_int32_t baseaddr = FUNC4(ch->buffer);

	FUNC3(au, 0, 0x1061c, 0, 4);
	FUNC3(au, 0, 0x10620, 0, 4);
	FUNC3(au, 0, 0x10624, 0, 4);
	switch(FUNC1(format)) {
		case 1:
			i=0xb000;
			break;
		case 2:
			i=0xf000;
			break;
 		case 8:
			i=0x7000;
			break;
		case 16:
			i=0x23000;
			break;
		default:
			i=0x3000;
	}
	FUNC3(au, 0, 0x10200, baseaddr, 4);
	FUNC3(au, 0, 0x10204, baseaddr+0x1000, 4);
	FUNC3(au, 0, 0x10208, baseaddr+0x2000, 4);
	FUNC3(au, 0, 0x1020c, baseaddr+0x3000, 4);

	FUNC3(au, 0, 0x10400, 0xdeffffff, 4);
	FUNC3(au, 0, 0x10404, 0xfcffffff, 4);

	FUNC3(au, 0, 0x10580, i, 4);

	FUNC3(au, 0, 0x10210, baseaddr, 4);
	FUNC3(au, 0, 0x10214, baseaddr+0x1000, 4);
	FUNC3(au, 0, 0x10218, baseaddr+0x2000, 4);
	FUNC3(au, 0, 0x1021c, baseaddr+0x3000, 4);

	FUNC3(au, 0, 0x10408, 0x00fff000 | 0x56000000 | 0x00000fff, 4);
	FUNC3(au, 0, 0x1040c, 0x00fff000 | 0x74000000 | 0x00000fff, 4);

	FUNC3(au, 0, 0x10584, i, 4);

	FUNC3(au, 0, 0x0f800, stereo? 0x00030032 : 0x00030030, 4);
	FUNC3(au, 0, 0x0f804, stereo? 0x00030032 : 0x00030030, 4);

	FUNC2(au, 0x11, 0, 0x58);
	FUNC2(au, 0x11, stereo? 0 : 1, 0x59);
}