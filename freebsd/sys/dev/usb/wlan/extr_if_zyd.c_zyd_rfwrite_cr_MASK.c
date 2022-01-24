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
typedef  int uint32_t ;
struct zyd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZYD_CR242 ; 
 int /*<<< orphan*/  ZYD_CR243 ; 
 int /*<<< orphan*/  ZYD_CR244 ; 
 int /*<<< orphan*/  FUNC0 (struct zyd_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct zyd_softc *sc, uint32_t val)
{
	int error;

	FUNC0(sc, ZYD_CR244, (val >> 16) & 0xff);
	FUNC0(sc, ZYD_CR243, (val >>  8) & 0xff);
	FUNC0(sc, ZYD_CR242, (val >>  0) & 0xff);
fail:
	return (error);
}