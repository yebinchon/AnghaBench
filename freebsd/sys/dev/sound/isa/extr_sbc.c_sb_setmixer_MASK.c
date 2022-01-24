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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SB_MIX_ADDR ; 
 int /*<<< orphan*/  SB_MIX_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct resource *io, u_int port, u_int value)
{
    	u_long   flags;

    	flags = FUNC2();
    	FUNC1(io, SB_MIX_ADDR, (u_char) (port & 0xff)); /* Select register */
    	FUNC0(10);
    	FUNC1(io, SB_MIX_DATA, (u_char) (value & 0xff));
    	FUNC0(10);
    	FUNC3(flags);
}