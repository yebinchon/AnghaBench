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
typedef  int /*<<< orphan*/  uint8_t ;
struct scc_bas {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct scc_bas*) ; 
 int /*<<< orphan*/  FUNC1 (struct scc_bas*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct scc_bas*,scalar_t__,int) ; 

__attribute__((used)) static __inline uint8_t
FUNC3(struct scc_bas *bas, int ch, int reg)
{

	FUNC2(bas, ch + REG_CTRL, reg);
	FUNC0(bas);
	return (FUNC1(bas, ch + REG_CTRL));
}