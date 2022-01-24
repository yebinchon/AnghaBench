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
struct ichwd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMI_EN ; 
 int SMI_TCO_EN ; 
 int FUNC0 (struct ichwd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ichwd_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline void
FUNC2(struct ichwd_softc *sc)
{
	FUNC1(sc, SMI_EN, FUNC0(sc, SMI_EN) | SMI_TCO_EN);
}