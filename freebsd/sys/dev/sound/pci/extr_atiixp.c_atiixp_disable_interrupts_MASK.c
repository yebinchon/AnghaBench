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
struct atiixp_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATI_REG_IER ; 
 int /*<<< orphan*/  ATI_REG_ISR ; 
 int /*<<< orphan*/  FUNC0 (struct atiixp_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct atiixp_info *sc)
{
	/* disable all interrupt sources */
	FUNC0(sc, ATI_REG_IER, 0);

	/* clear all pending */
	FUNC0(sc, ATI_REG_ISR, 0xffffffff);
}