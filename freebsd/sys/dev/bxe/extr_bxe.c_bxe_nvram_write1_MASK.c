#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ flash_size; } ;
struct bxe_softc {TYPE_1__ devinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ MCPR_NVM_COMMAND_FIRST ; 
 scalar_t__ MCPR_NVM_COMMAND_LAST ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int FUNC6 (struct bxe_softc*,scalar_t__,scalar_t__*,scalar_t__) ; 
 int FUNC7 (struct bxe_softc*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 

__attribute__((used)) static int
FUNC9(struct bxe_softc *sc,
                 uint32_t         offset,
                 uint8_t          *data_buf,
                 int              buf_size)
{
    uint32_t cmd_flags;
    uint32_t align_offset;
    uint32_t val;
    int rc;

    if ((offset + buf_size) > sc->devinfo.flash_size) {
        FUNC0(sc, "Invalid parameter, "
                  "offset 0x%x + buf_size 0x%x > flash_size 0x%x\n",
              offset, buf_size, sc->devinfo.flash_size);
        return (-1);
    }

    /* request access to nvram interface */
    rc = FUNC3(sc);
    if (rc) {
        return (rc);
    }

    /* enable access to nvram interface */
    FUNC5(sc);

    cmd_flags = (MCPR_NVM_COMMAND_FIRST | MCPR_NVM_COMMAND_LAST);
    align_offset = (offset & ~0x03);
    rc = FUNC6(sc, align_offset, &val, cmd_flags);

    if (rc == 0) {
        val &= ~(0xff << FUNC1(offset));
        val |= (*data_buf << FUNC1(offset));

        /* nvram data is returned as an array of bytes
         * convert it back to cpu order
         */
        val = FUNC2(val);

        rc = FUNC7(sc, align_offset, val, cmd_flags);
    }

    /* disable access to nvram interface */
    FUNC4(sc);
    FUNC8(sc);

    return (rc);
}