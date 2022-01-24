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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint8_t ;
struct urtw_softc {int dummy; } ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  URTW_EPROM_CMD ; 
 int /*<<< orphan*/  URTW_EPROM_DELAY ; 
 int URTW_EPROM_WRITEBIT ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static usb_error_t
FUNC3(struct urtw_softc *sc, int16_t bit)
{
	uint8_t data;
	usb_error_t error;

	FUNC1(sc, URTW_EPROM_CMD, &data);
	if (bit != 0)
		FUNC2(sc, URTW_EPROM_CMD, data | URTW_EPROM_WRITEBIT);
	else
		FUNC2(sc, URTW_EPROM_CMD, data & ~URTW_EPROM_WRITEBIT);
	FUNC0(URTW_EPROM_DELAY);
fail:
	return (error);
}