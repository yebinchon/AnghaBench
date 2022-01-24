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
struct au_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU_REG_CODECEN ; 
 int FUNC0 (struct au_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct au_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(struct au_info *au, char channel)
{
	FUNC1(au, 0, AU_REG_CODECEN,
	      FUNC0(au, 0, AU_REG_CODECEN, 4) | (1 << (channel + 8)), 4);
}