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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct tws_softc {int /*<<< orphan*/  bus_handle; int /*<<< orphan*/  bus_tag; } ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 

void
FUNC3(struct tws_softc *sc, int offset, 
                  u_int32_t value, int size)
{
    bus_space_tag_t         bus_tag = sc->bus_tag;
    bus_space_handle_t      bus_handle = sc->bus_handle;

    if (size == 4)
        FUNC2(bus_tag, bus_handle, offset, value);
    else 
        if (size == 2)
            FUNC1(bus_tag, bus_handle, offset, 
                                     (u_int16_t)value);
        else
            FUNC0(bus_tag, bus_handle, offset, (u_int8_t)value);
}