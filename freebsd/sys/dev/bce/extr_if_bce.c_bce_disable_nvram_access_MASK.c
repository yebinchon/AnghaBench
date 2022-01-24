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
typedef  int u32 ;
struct bce_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCE_NVM_ACCESS_ENABLE ; 
 int BCE_NVM_ACCESS_ENABLE_EN ; 
 int BCE_NVM_ACCESS_ENABLE_WR_EN ; 
 int /*<<< orphan*/  BCE_VERBOSE_NVRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bce_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct bce_softc *sc)
{
	u32 val;

	FUNC0(BCE_VERBOSE_NVRAM);

	val = FUNC2(sc, BCE_NVM_ACCESS_ENABLE);

	/* Disable both bits, even after read. */
	FUNC3(sc, BCE_NVM_ACCESS_ENABLE, val &
	    ~(BCE_NVM_ACCESS_ENABLE_EN | BCE_NVM_ACCESS_ENABLE_WR_EN));

	FUNC1(BCE_VERBOSE_NVRAM);
}