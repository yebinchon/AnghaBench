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
struct strbuf {size_t len; scalar_t__ buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 size_t FUNC1 (char*) ; 
 size_t FUNC2 (scalar_t__,char*) ; 

__attribute__((used)) static int FUNC3(const struct strbuf *buf)
{
	size_t min = FUNC1(">From ");
	size_t ngt;

	if (buf->len < min)
		return 0;

	ngt = FUNC2(buf->buf, ">");
	return ngt && FUNC0(buf->buf + ngt, "From ");
}