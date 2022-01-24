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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct slcompress {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,intptr_t,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct slcompress*,int /*<<< orphan*/ **,int*) ; 

int
FUNC2(u_char **bufp, int len, u_int type, struct slcompress *comp)
{
	u_char *hdr, *cp;
	int hlen, vjlen;

	cp = bufp? *bufp: NULL;
	vjlen = FUNC1(cp, len, len, type, comp, &hdr, &hlen);
	if (vjlen < 0)
		return (0);	/* error */
	if (vjlen == 0)
		return (len);	/* was uncompressed already */

	cp += vjlen;
	len -= vjlen;

	/*
	 * At this point, cp points to the first byte of data in the
	 * packet.  If we're not aligned on a 4-byte boundary, copy the
	 * data down so the ip & tcp headers will be aligned.  Then back up
	 * cp by the tcp/ip header length to make room for the reconstructed
	 * header (we assume the packet we were handed has enough space to
	 * prepend 128 bytes of header).
	 */
	if ((intptr_t)cp & 3) {
		if (len > 0)
			FUNC0(cp, ((intptr_t)cp &~ 3), len);
		cp = (u_char *)((intptr_t)cp &~ 3);
	}
	cp -= hlen;
	len += hlen;
	FUNC0(hdr, cp, hlen);

	*bufp = cp;
	return (len);
}