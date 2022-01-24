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
struct mfi_softc {TYPE_1__* mfi_qstat; } ;
struct mfi_command {int dummy; } ;
struct bio {scalar_t__ bio_driver2; } ;
struct TYPE_2__ {int q_length; } ;

/* Variables and functions */
 size_t MFIQ_FREE ; 
 uintptr_t MFI_LD_IO ; 
 uintptr_t MFI_SYS_PD_IO ; 
 struct mfi_command* FUNC0 (struct mfi_softc*,struct bio*) ; 
 struct mfi_command* FUNC1 (struct mfi_softc*,struct bio*) ; 
 struct bio* FUNC2 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mfi_softc*,struct bio*) ; 

__attribute__((used)) static struct mfi_command *
FUNC4(struct mfi_softc *sc)
{
	struct bio *bio;
	struct mfi_command *cm = NULL;

	/*reserving two commands to avoid starvation for IOCTL*/
	if (sc->mfi_qstat[MFIQ_FREE].q_length < 2) {
		return (NULL);
	}
	if ((bio = FUNC2(sc)) == NULL) {
		return (NULL);
	}
	if ((uintptr_t)bio->bio_driver2 == MFI_LD_IO) {
		cm = FUNC0(sc, bio);
	} else if ((uintptr_t) bio->bio_driver2 == MFI_SYS_PD_IO) {
		cm = FUNC1(sc, bio);
	}
	if (!cm)
	    FUNC3(sc, bio);
	return cm;
}