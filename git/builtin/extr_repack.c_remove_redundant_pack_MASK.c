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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(const char *dir_name, const char *base_name)
{
	struct strbuf buf = STRBUF_INIT;
	FUNC0(&buf, "%s/%s.pack", dir_name, base_name);
	FUNC2(buf.buf, 1);
	FUNC1(&buf);
}