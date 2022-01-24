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
typedef  int /*<<< orphan*/  u_char ;
struct ess_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SB_MIX_ADDR ; 
 int /*<<< orphan*/  SB_MIX_DATA ; 
 int FUNC1 (struct ess_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ess_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ess_info *sc, u_int port)
{
    	int val;

    	FUNC2(sc, SB_MIX_ADDR, (u_char) (port & 0xff)); /* Select register */
    	FUNC0(10);
    	val = FUNC1(sc, SB_MIX_DATA);
    	FUNC0(10);

    	return val;
}