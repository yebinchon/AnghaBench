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
typedef  int /*<<< orphan*/  uint16_t ;
struct udl_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDL_CTRL_CMD_WRITE_1 ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int FUNC0 (struct udl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC1(struct udl_softc *sc, uint16_t addr, uint8_t buf)
{
	int error;

	error = FUNC0(sc, UT_WRITE_VENDOR_DEVICE,
	    UDL_CTRL_CMD_WRITE_1, addr, 0x0000, &buf, 1);
	return (error);
}