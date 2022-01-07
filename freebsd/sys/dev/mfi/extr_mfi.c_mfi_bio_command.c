
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_softc {TYPE_1__* mfi_qstat; } ;
struct mfi_command {int dummy; } ;
struct bio {scalar_t__ bio_driver2; } ;
struct TYPE_2__ {int q_length; } ;


 size_t MFIQ_FREE ;
 uintptr_t MFI_LD_IO ;
 uintptr_t MFI_SYS_PD_IO ;
 struct mfi_command* mfi_build_ldio (struct mfi_softc*,struct bio*) ;
 struct mfi_command* mfi_build_syspdio (struct mfi_softc*,struct bio*) ;
 struct bio* mfi_dequeue_bio (struct mfi_softc*) ;
 int mfi_enqueue_bio (struct mfi_softc*,struct bio*) ;

__attribute__((used)) static struct mfi_command *
mfi_bio_command(struct mfi_softc *sc)
{
 struct bio *bio;
 struct mfi_command *cm = ((void*)0);


 if (sc->mfi_qstat[MFIQ_FREE].q_length < 2) {
  return (((void*)0));
 }
 if ((bio = mfi_dequeue_bio(sc)) == ((void*)0)) {
  return (((void*)0));
 }
 if ((uintptr_t)bio->bio_driver2 == MFI_LD_IO) {
  cm = mfi_build_ldio(sc, bio);
 } else if ((uintptr_t) bio->bio_driver2 == MFI_SYS_PD_IO) {
  cm = mfi_build_syspdio(sc, bio);
 }
 if (!cm)
     mfi_enqueue_bio(sc, bio);
 return cm;
}
