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
typedef  int uintmax_t ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int) ; 

__attribute__((used)) static int FUNC1(struct strbuf *sb, size_t size, uintmax_t n)
{
	while (size-- > 0) {
		FUNC0(sb, n & 0xff);
		n >>= 8;
	}
	return -!!n;
}