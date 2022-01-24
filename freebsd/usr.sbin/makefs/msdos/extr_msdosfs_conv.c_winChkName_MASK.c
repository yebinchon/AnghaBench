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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct winentry {int weCnt; int weChksum; int /*<<< orphan*/  wePart3; int /*<<< orphan*/  wePart2; int /*<<< orphan*/  wePart1; } ;

/* Variables and functions */
 int WIN_CHARS ; 
 int WIN_CNT ; 
 int WIN_LAST ; 
 int WIN_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

int
FUNC4(const u_char *un, size_t unlen, struct winentry *wep, int chksum)
{
	uint16_t wn[WIN_MAXLEN], *p;
	uint16_t buf[WIN_CHARS];
	int i, len;

	/*
	 * First compare checksums
	 */
	if (wep->weCnt & WIN_LAST)
		chksum = wep->weChksum;
	else if (chksum != wep->weChksum)
		chksum = -1;
	if (chksum == -1)
		return -1;

	/*
	 * Offset of this entry
	 */
	i = ((wep->weCnt & WIN_CNT) - 1) * WIN_CHARS;

	/*
	 * Translate UNIX name to ucs-2
	 */
	len = FUNC1(un, unlen, wn, WIN_MAXLEN);
	FUNC3(wn, len, WIN_MAXLEN);

	if (i >= len + 1)
		return -1;
	if ((wep->weCnt & WIN_LAST) && (len - i > WIN_CHARS))
		return -1;

	/*
	 * Fetch name segment from directory entry
	 */
	p = &buf[0];
	FUNC2(p, wep->wePart1, sizeof(wep->wePart1));
	p += sizeof(wep->wePart1) / sizeof(*p);
	FUNC2(p, wep->wePart2, sizeof(wep->wePart2));
	p += sizeof(wep->wePart2) / sizeof(*p);
	FUNC2(p, wep->wePart3, sizeof(wep->wePart3));

	/*
	 * And compare name segment
	 */
	if (!(FUNC0(&wn[i], buf, WIN_CHARS)))
		return -1;

	return chksum;
}