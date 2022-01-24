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
struct iwm_softc {int dummy; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_UCODE_TLV_API_WIFI_MCC_UPDATE ; 
 int /*<<< orphan*/  IWM_UCODE_TLV_CAPA_LAR_MULTI_MCC ; 
 scalar_t__ FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC2(struct iwm_softc *sc)
{
	return FUNC0(sc, IWM_UCODE_TLV_API_WIFI_MCC_UPDATE) ||
	    FUNC1(sc, IWM_UCODE_TLV_CAPA_LAR_MULTI_MCC);
}