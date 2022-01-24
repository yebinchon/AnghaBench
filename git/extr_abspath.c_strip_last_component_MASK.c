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
struct strbuf {size_t len; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,size_t) ; 

__attribute__((used)) static void FUNC3(struct strbuf *path)
{
	size_t offset = FUNC1(path->buf);
	size_t len = path->len;

	/* Find start of the last component */
	while (offset < len && !FUNC0(path->buf[len - 1]))
		len--;
	/* Skip sequences of multiple path-separators */
	while (offset < len && FUNC0(path->buf[len - 1]))
		len--;

	FUNC2(path, len);
}