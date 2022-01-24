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
struct dwc_hdmi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_FC_MASK2 ; 
 int HDMI_FC_MASK2_HIGH_PRI ; 
 int HDMI_FC_MASK2_LOW_PRI ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_FC_STAT2 ; 
 int HDMI_IH_MUTE_FC_STAT2_OVERFLOW_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct dwc_hdmi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct dwc_hdmi_softc *sc)
{
	FUNC0(sc, HDMI_IH_MUTE_FC_STAT2, HDMI_IH_MUTE_FC_STAT2_OVERFLOW_MASK);
	FUNC0(sc, HDMI_FC_MASK2,
	    HDMI_FC_MASK2_LOW_PRI | HDMI_FC_MASK2_HIGH_PRI);
}