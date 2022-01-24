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
typedef  int /*<<< orphan*/  uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bxe_softc *sc, void *data, uint32_t offset, uint32_t len)
{
    int rval = 0;

    if(!FUNC1(sc)) {
        FUNC0(sc, "Cannot access eeprom when interface is down\n");
        return (-EAGAIN);
    }
    rval = FUNC2(sc, offset, (uint8_t *)data, len);

   return (rval);
}