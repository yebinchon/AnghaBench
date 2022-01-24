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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ocs_textbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void
FUNC3(ocs_textbuf_t *textbuf, uint8_t *buffer, uint32_t buffer_length)
{
	char *s;

	if (!FUNC0(textbuf)) {
		return;
	}

	s = (char*) buffer;
	while(*s) {

		/*
		 * XML escapes
		 *
		 * "   &quot;
		 * '   &apos;
		 * <   &lt;
		 * >   &gt;
		 * &   &amp;
		 */

		switch(*s) {
		case '"':	FUNC2(textbuf, "&quot;"); break;
		case '\'':	FUNC2(textbuf, "&apos;"); break;
		case '<':	FUNC2(textbuf, "&lt;"); break;
		case '>':	FUNC2(textbuf, "&gt;"); break;
		case '&':	FUNC2(textbuf, "&amp;"); break;
		default:	FUNC1(textbuf, *s); break;
		}
		s++;
	}

}