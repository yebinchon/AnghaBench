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
struct iwm_fw_img {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iwm_softc*,struct iwm_fw_img const*) ; 
 int FUNC1 (struct iwm_softc*,struct iwm_fw_img const*) ; 

int
FUNC2(struct iwm_softc *sc, const struct iwm_fw_img *fw)
{
	int ret;

	ret = FUNC0(sc, fw);
	if (ret)
		return ret;

	return FUNC1(sc, fw);
}