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
typedef  scalar_t__ uint8_t ;
struct ucom_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ USIE_LS_DTR ; 
 int /*<<< orphan*/  FUNC0 (struct ucom_softc*,scalar_t__) ; 

__attribute__((used)) static void
FUNC1(struct ucom_softc *ucom, uint8_t flag)
{
	uint8_t dtr;

	dtr = flag ? USIE_LS_DTR : 0;
	FUNC0(ucom, dtr);
}