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
struct strbuf {char const* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,size_t*) ; 

__attribute__((used)) static const char *FUNC6(const char *pack_name, const char *suffix,
				   struct strbuf *buf)
{
	size_t len;
	if (!FUNC5(pack_name, ".pack", &len))
		FUNC1(FUNC0("packfile name '%s' does not end with '.pack'"),
		    pack_name);
	FUNC2(buf, pack_name, len);
	FUNC3(buf, '.');
	FUNC4(buf, suffix);
	return buf->buf;
}