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
typedef  int /*<<< orphan*/  uint16_t ;
struct ure_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  URE_CTL_READ ; 
 int FUNC0 (struct ure_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int
FUNC1(struct ure_softc *sc, uint16_t addr, uint16_t index,
    void *buf, int len)
{

	return (FUNC0(sc, URE_CTL_READ, addr, index, buf, len));
}