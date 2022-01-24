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
typedef  int u_int ;
struct lut_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lut_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lut_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct lut_entry*) ; 

__attribute__((used)) static void
FUNC3(struct lut_entry *lut, u_int objtotal)
{
	FUNC0(lut, sizeof(struct lut_entry) * objtotal);
#ifdef linux
	FUNC2(lut);
#else
	nm_os_free(lut);
#endif
}