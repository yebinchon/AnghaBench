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
struct ewah_bitmap {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ewah_bitmap*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  write_strbuf ; 

int FUNC1(struct ewah_bitmap *self, struct strbuf *sb)
{
	return FUNC0(self, write_strbuf, sb);
}