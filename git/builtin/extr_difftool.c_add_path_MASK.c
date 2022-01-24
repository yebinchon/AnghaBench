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
struct strbuf {int len; char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,size_t) ; 

__attribute__((used)) static void FUNC3(struct strbuf *buf, size_t base_len, const char *path)
{
	FUNC2(buf, base_len);
	if (buf->len && buf->buf[buf->len - 1] != '/')
		FUNC0(buf, '/');
	FUNC1(buf, path);
}