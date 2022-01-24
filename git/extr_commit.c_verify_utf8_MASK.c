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
struct strbuf {unsigned char* buf; scalar_t__ len; } ;

/* Variables and functions */
 int FUNC0 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,long,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,long,int) ; 

__attribute__((used)) static int FUNC3(struct strbuf *buf)
{
	int ok = 1;
	long pos = 0;

	for (;;) {
		int bad;
		unsigned char c;
		unsigned char replace[2];

		bad = FUNC0(buf->buf + pos, buf->len - pos);
		if (bad < 0)
			return ok;
		pos += bad;
		ok = 0;
		c = buf->buf[pos];
		FUNC2(buf, pos, 1);

		/* We know 'c' must be in the range 128-255 */
		replace[0] = 0xc0 + (c >> 6);
		replace[1] = 0x80 + (c & 0x3f);
		FUNC1(buf, pos, replace, 2);
		pos += 2;
	}
}