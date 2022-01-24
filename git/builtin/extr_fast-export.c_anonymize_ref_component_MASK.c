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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct strbuf*,size_t*) ; 

__attribute__((used)) static void *FUNC2(const void *old, size_t *len)
{
	static int counter;
	struct strbuf out = STRBUF_INIT;
	FUNC0(&out, "ref%d", counter++);
	return FUNC1(&out, len);
}